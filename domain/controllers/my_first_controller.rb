include Broker

post '/my_first_document' do
    logger.info("this is a test")
    deliver("new-account", "body")
end

get '/hello_world' do
    logger.info "Hello World in console"
    deliver("hello", "Oh hey there there!")
end