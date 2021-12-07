require './config/env.rb' # Load Config

require 'sinatra' # Load Sinatra

# load models
Dir["./models/*.rb"].each {|file| require file }

# load controllers
Dir["./controllers/*.rb"].each {|file| require file }