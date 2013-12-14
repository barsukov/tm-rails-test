ActiveAdmin::Dashboards.build do
  section "Campaign audit" do
    table_for PaperTrail::Version.where(:item_type=> "CampaignPlatform").order('id desc').limit(20) do # Use PaperTrail::Version if this throws an error
      column "Campaign_name" do |v| v.item.try(:campaign_name) end
      column "Campaign_budget" do |v| v.item.try(:campaign_budget) end
      column "Platform_Name" do |v| v.item.try(:platform_name) end
      column "Event" do |v| v.event end
      column "Modified at" do |v| v.created_at.to_s :long end
    end
  end
end
