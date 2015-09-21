
require('spec_helper')

require('spec-helper')
describe(venue) do
  
  it("tests capitalization of first letter (callback functionality ") do
    test_band = Venue.create({:name => "coliseum"})
    expect(test_venue.name()).to(eq("Coliseum"))
  end
  
  it("tests presence validation") do
    test_venue = Venue.new({:name => ""})
    expect(test_venue.save()).to(eq(false))
  end
end 

