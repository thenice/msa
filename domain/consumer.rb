# load env
require './config/env.rb'

# include logging
require './lib/logging.rb' 

# include all .rb consumers in /consumers
Dir["./consumers/*.rb"].each {|file| require file }