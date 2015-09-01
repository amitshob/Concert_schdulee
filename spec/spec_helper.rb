ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('pry')
require("sinatra/activerecord")
require('./lib/band')
require('./lib/venue')
RSpec.configure do |config|
  config.after(:each) do
    Venue.all().each() do |venue|
      venue.destroy()
    end
    Band.all().each() do |band|
      band.destroy()
    end
  end
end
