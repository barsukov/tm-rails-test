When(/^I visit admin panel by campaign manager$/) do
    @campaign_user = create :campaign_user
    visit('/admin/logout')
    visit('/admin/login')

    fill_in 'admin_user_email', :with => @campaign_user.email
    fill_in 'admin_user_password', :with => @campaign_user.password
    click_button "Login"
end

When(/^I visit platform page$/) do
  visit admin_platforms_path
end

When(/^I visit admin panel$/) do
  visit admin_root_path
end

When(/^I will go to campaign page$/) do
  visit admin_campaigns_path
end

Then(/^I can not be able to add the new platform$/) do
  page.should have_no_content("New Platform")
end

Then(/^I can be able to add the new platform$/) do
  page.should have_content("New Platform")
end