class Campaign < ActiveRecord::Base
  attr_accessible :name, :budget
  has_one :platform
  validates :name, presence: true
  validates :budget, numericality: { greater_than: 0 }
end
