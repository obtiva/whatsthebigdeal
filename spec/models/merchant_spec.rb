require 'spec_helper'

describe Merchant do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :city => "value for city",
      :state => "value for state",
      :zip_code => "value for zip_code"
    }
  end

  it "should create a new instance given valid attributes" do
    Merchant.create!(@valid_attributes)
  end
end
