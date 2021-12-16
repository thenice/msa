include Broker

listen_for "new-account" do |body|
    logger.info "Receiving Event: New-Account."
    logger.info "Body: #{body}"
    x = MyFirstModel.new
    x.price = 99929.00
    x.name = "My First Model"
    x.save
end

start_listening