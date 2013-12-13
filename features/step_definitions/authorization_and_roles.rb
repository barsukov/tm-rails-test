
When(/^I visit admin panel by campaign manager$/) do
  visit admin_root_path
end

When(/^I visit platform page$/) do
  visit
end

Then(/^I can not be able to add the$/) do
  pending
end
When(/^I visit admin panel$/) do
  visit admin_root_path
end
When(/^I will go to campaign page$/) do
  visit admin_campaigns_path
end
When(/^I visit admin panel by admin$/) do
  pending
end