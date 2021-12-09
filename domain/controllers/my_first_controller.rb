include Broker

post '/my_first_document' do
    puts "Create document endpoint called."
    deliver("new-account", "body")
end

get '/we-did-it' do
    "yeahhhh"
end