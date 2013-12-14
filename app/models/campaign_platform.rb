class CampaignPlatform < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :platform
  has_paper_trail :if => Proc.new { |t| t.campaign.budget >= 1000 }
  delegate :name,:budget, to: :campaign  ,prefix: true
  delegate :name,to: :platform  ,prefix: true
end