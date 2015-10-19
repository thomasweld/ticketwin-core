require 'faker'

FactoryGirl.define do
  factory :event do
    title { Faker::Name.title }
    description { Faker::Lorem.paragraph }
    location { Faker::Address.city }
    start_date { Faker::Date.forward(10) }

    # status should be automatically established upon creation and not hardcoded here
    status "pending_approval"

    image_file_name { Faker::Name.name }
    
    # t.string   "image_content_type"
    # t.integer  "image_file_size"
    # t.datetime "image_updated_at"
  end
end