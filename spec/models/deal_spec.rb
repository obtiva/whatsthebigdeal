require 'spec_helper'

describe Deal do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :merchant_id => 1,
      :start_date => Date.today,
      :end_date => Date.today,
      :deal_price => 1.5,
      :normal_price => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Deal.create!(@valid_attributes)
  end
end
