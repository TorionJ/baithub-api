FactoryBot.define do
  factory :user do
    username 'Shmitty McFisherman'
    # password 'abracadabra'
    # password_confirmation 'abracadabra'
    password_digest 'abbadabba'
  end
end
