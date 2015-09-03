require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('concert_schdulee path', { type: :feature }) do
  it('allows a user to add a band') do
    visit('/')
    fill_in('name', :with =>'Band1')
    click_button('Add Band')
    expect(page).to have_content('Band1')
  end

  it('allows a user to add a venue') do
    visit('/venues_link')
    fill_in('venue', :with =>'Coleseum')
    click_button('Add Venue')
    expect(page).to have_content('Coleseum')
  end


  it('can update the band name') do
    band = Band.new({name:"New Band",:id=>nil})
    band.save()
    visit("/bands/#{band.id()}")
    fill_in('name', :with=> 'Corndog')
    click_button('Update')
    expect(page).to have_content('Corndog')
  end
  
end
