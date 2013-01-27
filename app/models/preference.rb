class Preference < ActiveRecord::Base
  attr_accessible :like, :dislikes, :user_id, :restaurant_id
  belongs_to :user
  belongs_to :restaurant

  scope :likes, where(like: true)
  scope :dislikes, where(like: false)

  #def self.likes
  	#self.find_all_by_like(true).map { |pref| pref.like }
  #	where(:like => true)
  #end

  def self.evaluate
    # stuff
  end
end
