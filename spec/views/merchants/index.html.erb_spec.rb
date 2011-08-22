require 'spec_helper'

describe "/merchants/index.html.erb" do
  include MerchantsHelper

  before(:each) do
    assigns[:merchants] = [
      stub_model(Merchant,
        :name => "value for name",
        :description => "value for description",
        :city => "value for city",
        :state => "value for state",
        :zip_code => "value for zip_code"
      ),
      stub_model(Merchant,
        :name => "value for name",
        :description => "value for description",
        :city => "value for city",
        :state => "value for state",
        :zip_code => "value for zip_code"
      )
    ]
  end

  it "renders a list of merchants" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
    response.should have_tag("tr>td", "value for zip_code".to_s, 2)
  end
end
