require "spec_helper"

describe Preference do
  before(:each) do
    @pref = Preference.new
  end

  describe "#like" do
    it "defaults to false" do
      @pref.like.should be_false
    end
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

  describe "Model" do
    it "restaurant_id should be unique" do
      @pref = Preference.create(restaurant_id: 1)
      @pref_dupe = Preference.create(restaurant_id: 1)
      @pref_dupe.should_not be_valid
    end
  end

  describe "Named scopes" do
    it "Likes method should all return like as true" do
      Preference.create(like: 1)
      Preference.likes.all? { |p| p.like == true }.should be_true
    end

    it "Dislikes method should all return like as false" do
      Preference.create(like: 0)
      Preference.dislikes.all? { |p| p.like == false }.should be_true
    end 
  end
end
