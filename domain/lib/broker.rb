module Broker
    
    require './config/kafka-config.rb'

    def kafka
        @@kafka ||= Kafka.new([KAFKA_CONFIG[:hosts]],
            client_id: KAFKA_CONFIG[:client_id])
    end

    def consumer
        @@consumer ||= kafka.consumer(

            # todo: move these settings into config
            group_id: KAFKA_CONFIG[:hosts],
        
            # Increase offset commit frequency to once every 5 seconds.
            offset_commit_interval: 5,
        
            # Commit offsets when 100 messages have been processed.
            offset_commit_threshold: 100,
        
            # Increase the length of time that committed offsets are kept.
            offset_retention_time: 7 * 60 * 60
        )
    end

    def listen_for(topic, &event)
        @@events ||= {}
        @@events[topic] = event
    end

    def deliver(topic, message)
        # todo: Error handling
        producer = kafka.producer
        producer.produce(message, topic: topic)
        producer.deliver_messages
    end

    def start_listening
        #register listeners
        @@events.keys.each do |topic|
            puts "Registering listener for: #{topic}"
            consumer.subscribe(topic, start_from_beginning: false)
        end

        # start lisetning
        consumer.each_message do |message|
            # todo: error handling
            @@events[message.topic].call(message.value) # call proc defined in the consumer
        end

    end

end