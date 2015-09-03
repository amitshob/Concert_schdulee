ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('pry')
require("sinatra/activerecord")
<<<<<<< HEAD
require('capybara')
require('./lib/band')
require('./lib/venue')
=======
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
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
