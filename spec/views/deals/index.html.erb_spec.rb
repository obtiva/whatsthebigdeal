require 'spec_helper'

describe "/deals/index.html.haml" do
  include DealsHelper

  before(:each) do
    assigns[:deals] = [
      stub_model(Deal,
        :name => "value for name",
        :description => "value for description",
        :merchant => 1,
        :deal_price => 1.5,
        :normal_price => 1.5
      ),
      stub_model(Deal,
        :name => "value for name",
        :description => "value for description",
        :merchant => 1,
        :deal_price => 1.5,
        :normal_price => 1.5
      )
    ]
  end

  it "renders a list of deals" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
  end
end
