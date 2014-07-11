require 'spec_helper'

feature "page lists dogs" do
  let!(:transport) {FactoryGirl.create(:transport)}
  let!(:dog1) {FactoryGirl.create(:dog, transport_id: transport.id)}
  let!(:dog2) {FactoryGirl.create(:dog, transport_id: transport.id)}

  before do
    visit transport_dogs_path(transport)
  end

  scenario "should have dog's name" do
    within '#dog-table' do
      expect(page).to have_content(dog1.name)
      expect(page).to have_content(dog2.name)
    end
  end

  scenario "should have dog's weight" do
    within '#dog-table' do
      expect(page).to have_content(dog1.weight)
      expect(page).to have_content(dog2.weight)
    end
  end

  scenario "should have dog's gender" do
    within '#dog-table' do
      expect(page).to have_content(dog1.gender)
      expect(page).to have_content(dog2.gender)
    end
  end

  scenario "should have dog's age" do
    within '#dog-table' do
      expect(page).to have_content(dog1.age)
      expect(page).to have_content(dog2.age)
    end
  end

  scenario "should have dog's location" do
    within '#dog-table' do
      expect(page).to have_content(dog1.location)
      expect(page).to have_content(dog2.location)
    end
  end

  scenario "should have dog's breed" do
    within '#dog-table' do
      expect(page).to have_content(dog1.breed)
      expect(page).to have_content(dog2.breed)
    end
  end
end
