include Broker

get '/:id' do
    puts "=>> iddd"
end

post '/new' do
    puts "Nuu acocunt!"
    deliver("new-account", "weee")
    puts "Nuu acocunt!"
end

post '/add_value/:account_id/:amount' do
    deliver("add-value", {account_id: params[:account_id], amount: params[:amount]}.to_json)
end

post '/deduct_value/:account_id/:amount' do
    deliver("deduct-value", {account_id: params[:account_id], amount: params[:amount]}.to_json)
end
