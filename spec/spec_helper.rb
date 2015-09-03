ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('pry')
require("sinatra/activerecord")
require('capybara')
require('./lib/band')
require('./lib/venue')
