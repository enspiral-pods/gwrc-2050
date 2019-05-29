# encoding: utf-8
require 'rubygems'
require 'bundler'
Bundler.setup
require 'rack/cors'
require 'dotenv'
Dotenv.load('.env.development')

# The actual server code is in src/server.rb
require './server'

# The server can run in two modes, 'production' and 'development'
# the mode is set in the RACK_ENV or RAILS_ENV environment variables
ENV['RACK_ENV'] = ENV['RAILS_ENV'] if ENV['RAILS_ENV']

# This sets up the bits of the server
# enable CORS for the client app
puts "#{ENV['CLIENT_URL']}"
use Rack::Cors do |config|
  config.allow do |allow|
    allow.origins "#{ENV['CLIENT_URL']}"
    allow.resource '*',
      :methods => [:get, :options],
      :headers => :any,
      :max_age => 0
  end
end
# To compress the data going back and forth
use Rack::Deflater
# This logs access and errors
use Rack::CommonLogger

# This is defined in src/server.rb
run TwentyFiftyServer
