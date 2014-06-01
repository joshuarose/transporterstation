require 'spec_helper'

feature 'Home page' do
  scenario 'should have navbar' do
    visit root_path
    click_link 'Home'
    expect(current_path).to eq(root_path)
  end
  scenario 'should have logo' do
    visit root_path
    expect(page).to have_css('#logo')
  end
  scenario "should have organization sign-up" do
    visit root_path
    click_link 'Organization'
    within '#organization' do
      click_link 'Sign Up'
    end
  end
end
