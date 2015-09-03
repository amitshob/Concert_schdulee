require('spec_helper')
<<<<<<< HEAD
=======

describe(Band) do
  
  it("tests capitalization of first letter (callback functionality ") do
    test_band = Band.create({:name => "tool", :rating=> "3"})
    expect(test_band.name()).to(eq("Dethklok"))
  end
  
  it("tests presence validation") do
    test_band = Band.new({:name => ""})
    expect(test_band.save()).to(eq(false))
  end

  
end
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
