require 'spec_helper'

RSpec.describe Event, type: :user do

  let(:user) { create :user }

  it "has a valid factory" do
    expect(user).to be_valid
  end
end