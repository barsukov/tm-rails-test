class Platform < ActiveRecord::Base
  has_and_belongs_to_many :campaigns
  attr_accessible :name
  validates :name, presence: true
end