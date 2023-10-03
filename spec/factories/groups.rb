FactoryBot.define do
  factory :group do
    group_name { Faker::Name.initials(number: 2) }
    introduction { Faker::Lorem.sentence }
    owner_id { '1' }
    association :user

    after(:build) do |group|
      group.group_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
