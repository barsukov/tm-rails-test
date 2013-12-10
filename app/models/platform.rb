class Platform < ActiveRecord::Base
  belongs_to :campaign
  attr_accessible :name ,:campaign_id
  validates :name, presence: true
end