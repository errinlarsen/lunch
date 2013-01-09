class Restaurant < ActiveRecord::Base
  attr_accessible :name
  has_many :entries
  has_many :users, through: :entries
end
