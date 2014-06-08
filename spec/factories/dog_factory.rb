FactoryGirl.define do
  sequence :name do
    Faker::Name.name.to_s
  end
  sequence :weight do
    Faker::Number.number(2)
  end
  sequence :image do
    Faker::Internet.url('example.com')
  end
  sequence :age do
    Faker::Number.digit
  end
  sequence :location do
    Faker::Address.street_address
  end

  factory :dog do
    name
    weight
    image
    isolate = [true, false].sample
    gender = ['Male', 'Female'].sample
    age
    location
    breed = ['Dachshund',
              'Pitbull',
              'German Shepherd',
              'Beagle',
              'Sheltie'].sample
  end
end
