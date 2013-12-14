class Campaign < ActiveRecord::Base
  has_many :campaign_platforms
  has_many :platforms, :through => :campaign_platforms
  attr_accessible :name, :budget,:platforms,:platform_ids,:platforms_attributes
  accepts_nested_attributes_for :platforms
  validates :name, presence: true
  validates :budget, numericality: { greater_than: 0 }
  validates :platforms, presence: true

  scope :require_budget ,->(){ where(Campaign.arel_table[:budget].gt(1000))}
end
