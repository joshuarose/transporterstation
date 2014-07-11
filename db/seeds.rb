# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  transport = Transport.create({
    start_time: Time.at(rand * Time.now.to_i),
    run_date: 3.days.from_now
  })

  5.times do
    Dog.create({
    name: Faker::Name.name.to_s,
    weight: Faker::Number.number(2),
    image: Faker::Internet.url('example.com'),
    age: Faker::Number.digit,
    location: Faker::Address.street_address,
    isolate: [true, false].sample,
    gender: ['Male', 'Female'].sample,
    breed: ['Dachshund','Pitbull','German Shepherd','Beagle','Sheltie'].sample,
    transport_id: transport.id})
  end

end
