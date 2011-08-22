Given /^a merchant named "([^\"]*)" located in "([^\"]*)"$/ do |name, loc|
  city, state = loc.split(",")
  Merchant.create(:name => name, :city => city.strip, :state => state.strip)
end

Then /^I see the merchants like so:$/ do |table|
  actual_table = tableish(".merchant_row",
      "td.merchant_name, td.merchant_state, td.merchant_city")
  table.diff!(actual_table)
end
