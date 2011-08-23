require 'spec_helper'

describe "/deals/edit.html.haml" do
  include DealsHelper

  before(:each) do
    assigns[:deal] = @deal = stub_model(Deal,
      :new_record? => false,
      :name => "value for name",
      :description => "value for description",
      :merchant => 1,
      :deal_price => 1.5,
      :normal_price => 1.5
    )
  end

  it "renders the edit deal form" do
    render

    response.should have_tag("form[action=#{deal_path(@deal)}][method=post]") do
      with_tag('input#deal_name[name=?]', "deal[name]")
      with_tag('textarea#deal_description[name=?]', "deal[description]")
      with_tag('input#deal_merchant[name=?]', "deal[merchant]")
      with_tag('input#deal_deal_price[name=?]', "deal[deal_price]")
      with_tag('input#deal_normal_price[name=?]', "deal[normal_price]")
    end
  end
end
