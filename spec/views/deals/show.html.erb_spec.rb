require 'spec_helper'

describe "/deals/show.html.haml" do
  include DealsHelper
  before(:each) do
    assigns[:deal] = @deal = stub_model(Deal,
      :name => "value for name",
      :description => "value for description",
      :merchant => 1,
      :deal_price => 1.5,
      :normal_price => 1.5
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/1/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
  end
end
