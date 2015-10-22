require 'spec_helper'

RSpec.describe Event, type: :model do

  #eventually put let into spec_helper with other created models
  let(:event) { create :event }

  it "has a valid factory" do
    expect(event).to be_valid
  end
  
  it "has a title" do
    expect(event.title).to_not be_nil
  end

  it "has a description" do
    expect(event.description).to_not be_nil   
  end

  it "has a start_date that's a valid datetime" do
    expect(event.start_date).to be_an_instance_of ActiveSupport::TimeWithZone
  end

  it "has a end_date that's a valid datetime" do
    expect(event.end_date).to be_an_instance_of ActiveSupport::TimeWithZone
  end

  it "has a location" do
    expect(event.location).to_not be_nil
  end

  it "has a start date" do
    expect(event.start_date).to be > (Date.today)
  end

  it "has an end date later than the start date" do
    expect(event.end_date).to be > (event.start_date)
  end

  xit "has an image" do
    expect(event.image_file_name).to_not be_nil
    #expect(event.image_content_type).to eq(%w(png jpg bmp))
    #ask about why there are multiple image attributes
  end

  xit "has a user_id" do
    expect(event.user_id).to_not be_nil
    # but there will be a better test for this once the associations are properly set up
  end

  xit "has an oranization_id" do
    expect(event.organization_id).to_not be_nil
    # but there will be a better test for this once the associations are properly set up
  end

  describe "status" do

    it "is 'pending_approval' upon creation of event" do
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

end
  
