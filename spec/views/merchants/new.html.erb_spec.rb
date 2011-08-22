require 'spec_helper'

describe "/merchants/new.html.erb" do
  include MerchantsHelper

  before(:each) do
    assigns[:merchant] = stub_model(Merchant,
      :new_record? => true,
      :name => "value for name",
      :description => "value for description",
      :city => "value for city",
      :state => "value for state",
      :zip_code => "value for zip_code"
    )
  end

  it "renders new merchant form" do
    render

    response.should have_tag("form[action=?][method=post]", merchants_path) do
      with_tag("input#merchant_name[name=?]", "merchant[name]")
      with_tag("textarea#merchant_description[name=?]", "merchant[description]")
      with_tag("input#merchant_city[name=?]", "merchant[city]")
      with_tag("input#merchant_state[name=?]", "merchant[state]")
      with_tag("input#merchant_zip_code[name=?]", "merchant[zip_code]")
    end
  end
end
