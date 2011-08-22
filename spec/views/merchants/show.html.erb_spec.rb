require 'spec_helper'

describe "/merchants/show.html.haml" do
  include MerchantsHelper
  before(:each) do
    assigns[:merchant] = @merchant = stub_model(Merchant,
      :name => "value for name",
      :description => "value for description",
      :city => "value for city",
      :state => "value for state",
      :zip_code => "value for zip_code"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
    response.should have_text(/value\ for\ zip_code/)
  end
end
