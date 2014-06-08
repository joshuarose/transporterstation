require 'spec_helper'

feature 'new dog page' do

  before do
    visit new_dog_path
  end

  scenario "filling out form with valid data" do
    fill_in "Name", with: "Prescott"
    fill_in "Weight", with: "50 lbs"
    attach_file 'Image', 'assets/images/logo.jpg'
    select('True', from: 'Isolate')
    select('Male', from: 'Gender')
    fill_in "Age", with: 8
    fill_in "Location", with: "123 Main Street"
    fill_in "Breed", with: "Mix"
    click_button "Create"
    expect(page).to have_content("Dog created")
  end

  scenario "filling out form with invalid data" do
    click_button "Create"
    expect(page).to have_content("Dog created")
  end
end
