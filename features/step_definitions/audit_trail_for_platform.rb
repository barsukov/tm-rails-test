When(/^I go to audit dashboard page$/) do
  visit admin_dashboard_path
end

When(/^I have added new campaign with greater budget than 1000$/) do
  @company__with_require_budget = create :campaign_with_platforms_require_budget
end
When(/^I have added new campaign with less budget than 1000$/) do
  @company_with_out_require_budget = create :campaign_with_platforms
end

Then(/^I must see new record in audit page$/) do
  expect(page).to have_content @company__with_require_budget.name
end

Then(/^I must not see new record in audit page$/) do
  expect(page).to have_no_content @company_with_out_require_budget.name
end
