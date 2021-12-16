require 'json'

# do not batch stdout
$stdout.sync = true

# Mongo/Mongoid
require 'mongoid'
Mongoid.load!('./config//mongoid.yml', environment="development")

# Kafka
require 'ruby-kafka'
require './config/kafka-config.rb'
require './lib/broker.rb'

# Load all models
Dir["./models/*.rb"].each {|file| require file }