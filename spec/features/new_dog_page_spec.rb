require 'spec_helper'

feature 'new dog page' do
  let!(:test_transport) { FactoryGirl.create(:transport) }

  before do
    visit new_transport_dog_path(test_transport.id)
  end

  scenario "filling out form with valid data" do
    fill_in "Name", with: "Prescott"
    fill_in "Weight", with: "50 lbs"
    # TODO: attaching files
    # attach_file('image', File.join(Rails.root, 'public', 'images', 'logo.jpg'))
    select('True', from: 'Isolate')
    select('Male', from: 'Gender')
    fill_in "Age", with: 8
    fill_in "Location", with: "123 Main Street"
    select('doge', from: 'Breed')
    click_button "Create"
    expect(page).to have_content("Dog created")
  end

  scenario "filling out form with invalid data" do
    click_button "Create"
    expect(page).to have_content("Dog created")
  end
end
