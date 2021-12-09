include Broker

listen_for "new-account" do |body|
    puts "Receiving Event: New-Account."
    puts "Body: #{body}"
    x = MyFirstModel.new
    x.price = 9999.00
    x.name = "My First Model"
    x.say_hi
    x.save
end

start_listening