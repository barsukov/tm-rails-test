class AddPlatformsCampaignsTable < ActiveRecord::Migration
  def change
    create_table :campaign_platforms do |t|
    t.references :campaign
    t.references :platform
    end
  end
end
