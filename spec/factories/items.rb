FactoryBot.define do
  factory :item do
    name { Faker::Name.initials(number: 2) }
    quantity { Faker::Number.within(range: 0..500) }
    storage { Faker::Lorem.word }
    explanation { Faker::Lorem.sentence }
    pdf { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'sample.pdf')) }
    association :user
    association :group

    after(:build) do |item|
      item.item_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      item.storage_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
    
  end
end
