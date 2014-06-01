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
    within '#organization' do
      click_link 'Register'
    end
    expect(page).to have_content('Organization Sign Up')
  end
  scenario "should have organization log-in" do
    visit root_path
    within '#organization' do
      click_link 'Login'
    end
    expect(page).to have_content('Organization Sign In')
  end
  scenario "should have volunteer sign-up" do
    visit root_path
    within '#volunteer' do
      click_link 'Register'
    end
    expect(page).to have_content('Volunteer Sign Up')
  end
  scenario "should have volunteer log-in" do
    visit root_path
    within '#volunteer' do
      click_link 'Login'
    end
    expect(page).to have_content('Volunteer Sign In')
  end
end
