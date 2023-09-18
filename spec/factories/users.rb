FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.email }
    password { '1a' + Faker::Internet.password(min_length: 6) }
  end
end
