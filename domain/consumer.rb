require './config/env.rb' # load env

# include consumers
Dir["./consumers/*.rb"].each {|file| require file }