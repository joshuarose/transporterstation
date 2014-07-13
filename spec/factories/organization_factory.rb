FactoryGirl.define do
  sequence :organization_name do
    Faker::Company.name
  end

  sequence :email do
    Faker::Internet.email
  end

  sequence :address do
    Faker::Address.street_address
  end

  sequence :phone do
    Faker::Number.number(10)
  end

  sequence :website do
    Faker::Internet.domain_name
  end

  sequence :city do
    Faker::Address.city
  end

  sequence :contact_name do
    Faker::Name.name
  end

  sequence :state do
    Faker::Address.state_abbr
  end

  sequence :zip_code do
    Faker::Address.zip_code
  end

  factory :organization do
    organization_name
    email
    address
    phone
    website
    contact_name
    city
    state
    zip_code
    password 'abcd1234!'
    password_confirmation 'abcd1234!'
  end
end
