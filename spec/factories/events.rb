require 'faker'

FactoryGirl.define do
  factory :event do |f|
    # f.firstname { Faker::Name.first_name }
    # f.lastname { Faker::Name.last_name }
    f.title { Faker::Name.title }
    f.description { Faker::Name.description }

    # title "Fuggin Awesome"
    # description "A Fuggin Awesome party dude!"

    # t.string   "title",              null: false
    # t.text     "description"
    # t.datetime "start_date"
    # t.datetime "end_date"
    # t.integer  "user_id"
    # t.datetime "created_at",         null: false
    # t.datetime "updated_at",         null: false
    # t.string   "status"
    # t.string   "image_file_name"
    # t.string   "image_content_type"
    # t.integer  "image_file_size"
    # t.datetime "image_updated_at"
    # t.string   "location"
    # t.integer  "organization_id"
  end
end