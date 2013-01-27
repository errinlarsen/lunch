require "spec_helper"

describe Preference do
  before(:each) do
    @pref = Preference.new
  end

  describe "Associations" do
    it "belongs_to a Restaurant" do
      @pref.restaurant = Restaurant.new
      @pref.should have(:no).errors_on(:restaraunt)
    end

    it "belongs_to a User" do
      @pref.user = User.new
      @pref.should have(:no).errors_on(:user)
    end
  end

  describe "Like Method" do
    it "Likes should default to false" do
      @pref.like.should be_false
    end

    it "Likes should" do
      Preference.likes.all? { |p| p.like == true }.should be_true
    end



  end
end
