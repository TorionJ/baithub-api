FactoryBot.define do
  factory :catch do
    bait_id 1
    user_id 1
    species 'trill fish'
    weight {Faker::Number.between(1, 10)}
    length {Faker::Number.between(1, 10)}
  end
end
