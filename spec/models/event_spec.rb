require 'spec_helper'

RSpec.describe Event, type: :model do

  let(:event) { create :event }

  it "has a valid factory" do
    expect(event).to be_valid
  end
  
  it "has a title that's a string" do
    expect(event.title.class).to eq(String)
  end

  it "has a description that's text" do
    expect(event.description.class).to eq(String)    
  end

  it "has a start_date that's a valid datetime" do
    expect(event.start_date.class).to eq(ActiveSupport::TimeWithZone)
  end

  it "has a end_date that's a valid datetime" do
    expect(event.end_date.class).to eq(ActiveSupport::TimeWithZone)
  end

  xit "has a user_id that's an integer" do
    expect(event.user_id.class).to eq(Integer)
  end

  describe "status" do

    xit "is 'pending_approval' upon creation of event" do
      expect(event.status).to eq("pending_approval")
    end

    xit "is 'live' status during event" do
      #before - set event status in proper way
      expect(event.status).to eq("live")
    end

    xit "is 'expired' after event" do
      #before - set event status in proper way
      expect(event.status).to eq("after")
    end

  end


  # t.string   "image_file_name"
  # t.string   "image_content_type"
  # t.integer  "image_file_size"
  # t.datetime "image_updated_at"
  # t.string   "location"
  # t.integer  "organization_id"

end
  
