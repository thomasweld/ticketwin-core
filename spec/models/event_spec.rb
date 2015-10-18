require 'spec_helper'

RSpec.describe Event, type: :model do

  it "has a valid factory" do
    FactoryGirl.create(:event).should be_valid
  end

  
  it "has a title that's a string"
  it "has a description that's text"
  # it "has a start_date that's a datetime"
  # it "has an end_date that's a datetime"
  # it "has a user_id that's an integer"
  # it "has a created_at that's a datetime"
  # it "has an updated_at that's a datetime"
  # it "has a status that's a string. Options: pending_approval, live, expired"

  # t.string   "image_file_name"
  # t.string   "image_content_type"
  # t.integer  "image_file_size"
  # t.datetime "image_updated_at"
  # t.string   "location"
  # t.integer  "organization_id"

end
  
