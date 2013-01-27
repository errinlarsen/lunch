class Restaurant < ActiveRecord::Base
  attr_accessible :name

  has_many :preferences
  has_many :users, through: :preferences

  validates_presence_of :name
end
