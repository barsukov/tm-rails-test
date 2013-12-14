Before "@platform" do
  @platform = build :android_platform
  @campaign = build :campaign
  @platform_created = create :android_platform

end
When(/^I fill every platforms fields correctly$/) do
  within(".inputs") do
    fill_in "platform_name", with: @platform.name
  end
end

Then(/^I must see new platform$/) do
  expect(page).to have_content 'Platform Platform was successfully created'
end

When(/^I will go to create campaign/) do
  visit new_admin_campaign_path
end
When(/^I press the button "([^"]*)"$/) do |arg|
  click_button(arg)
end
When(/^I will go to create platform$/) do
  visit new_admin_platform_path
end
When(/^I fill every campaign fields correctly$/) do
  within(".inputs") do
    fill_in "campaign_name", with: @campaign.name
    fill_in "campaign_budget", with: @campaign.budget
  end
end
When(/^I check the platform$/) do
  within(".inputs") do

    find(:css, "#campaign_platform_ids_#{@platform_created.id}").set(true)
  end
end
Then(/^I must see new campaign$/) do
  expect(page).to have_content 'Campaign was successfully created'

end