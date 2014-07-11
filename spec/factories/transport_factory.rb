FactoryGirl.define do
  sequence :run_date do
    3.days.from_now
  end

  sequence :start_time do
    Time.at(rand * Time.now.to_i)
  end

  # sequence :dogs do
  #   dogs = []
  #   3.times do
  #     dogs.push(build(:dog))
  #   end
  # end

  factory :transport do
    run_date
    start_time
    # dogs
  end
end
