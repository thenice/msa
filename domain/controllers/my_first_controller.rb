include Broker

post '/my_first_document' do
    logger.info("this is a test")
    deliver("new-account", "body")
end