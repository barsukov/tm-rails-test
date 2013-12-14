class Platform < ActiveRecord::Base
  has_many :campaign_platforms
  has_many :campaigns, :through => :campaign_platforms
  attr_accessible :name
  validates :name, presence: true
end