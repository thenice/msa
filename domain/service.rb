require './config/env.rb' # Load Config

require 'sinatra' # Load Sinatra

# Set port and IP address for app to bind to. Do not change for Docker-based deployment
set :port, 4567
set :bind, '0.0.0.0'

# load controllers
Dir["./controllers/*.rb"].each {|file| require file }