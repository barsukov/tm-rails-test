class Campaign < ActiveRecord::Base
  has_paper_trail :on => [:update, :destroy],:if => Proc.new { |t| t. > 1000 }
  attr_accessible :name, :budget,:platform_id
  has_and_belongs_to_many :platforms
  belongs_to :platform
  validates :name, presence: true
  validates :budget, numericality: { greater_than: 0 }
  scope :require_budget ,->(){ where(Campaign.arel_table[:budget].gt(1000))}
end
