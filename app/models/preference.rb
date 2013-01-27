class Preference < ActiveRecord::Base
  attr_accessible :like, :user_id, :restaurant_id
  belongs_to :user
  belongs_to :restaurant

  def self.likes
  	#self.all.map { |pref| pref.likes }
  end

  def self.evaluate
    # stuff
  end
end
