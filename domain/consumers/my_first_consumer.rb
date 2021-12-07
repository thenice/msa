include Broker

listen_for "new-account" do |body|
    puts "New Account Created from consumer."
    x = MyFirstModel.new
    x.price = 500
    x.name = "it worked"
    x.save
end

start_listening