require('pry')
require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('./lib/**/*.rb')
require('./lib/band')
require('./lib/venue')
require('pg')


get("/") do
  @bands = Band.all() # it stores all the band values in the instancce variable and passes all bands to the index page
  erb(:index)
end

get("/band_link") do
  @bands = Band.all()
  erb(:band)
end

get("/venues_link") do
  @venues=Venue.all()
  erb(:venues)
end


post("/bands") do
  temporary_name = params.fetch("name")
  temporary_band = Band.create({:name => temporary_name}) # created a new instance of band and saved it in the database
   @bands = Band.all()
  erb(:index)
end

get("/bands/:id") do
  @selected_band = Band.find(params.fetch("id").to_i) #
  @venues = Venue.all()
  # @bands = Band.all()
  erb(:band)
end

patch("/update_bandname/:id") do
  @selected_band = Band.find(params.fetch('id').to_i())
  name= params.fetch("name")
  @selected_band.update({:name => name})
  @venues = Venue.all()
  erb(:band)
end

delete('/band/:id') do
  Band.find(params.fetch('id').to_i()).destroy()
  redirect('/')
end

post("/venues") do
  venue=params.fetch("venue")
  temporary_venue=Venue.create({:name=>venue})
  @venues=Venue.all()
  erb(:venues)
end

get("/venues/:id") do
  @venues=Venue.find(params.fetch("id").to_i)
  @venues
  erb(:venues)
end

post("/venue_associate") do
#binding.pry
  venues = params.fetch("venue_checkbox")
  @selected_band= Band.find(params.fetch("id"))

  venues.each() do |venue|
    checked_venues = @selected_band.venues
    checked_venues.push(Venue.find(venue))
    @selected_band.update({:venues => checked_venues})
  end

  # venue_checkbox:params.fetch("venue_checkbox")
  #
  # temporary_venue_checkbox=Venue.create({:name=>temporary_venue_checkbox})
  # @venue_checkbox=Venue.all()
  #@venues = Venue.all()
  erb(:band)
end

post("/add_ratings") do
  rating=params.fetch("rating")
  @selected_band=Band.find(params.fetch("id"))
  @selected_band.update({:rating=>rating})

  @venues = Venue.all()
  erb(:band)
end
