require "spec_helper"

describe Restaurant do
  it { should respond_to :name }
  it { should respond_to :preferences }
  it { should respond_to :users }

  before(:each) do
    @restaurant = Restaurant.new(name: "Valid Eatery")
  end

  describe "Validations" do
    it "is valid with a name" do
      @restaurant.should be_valid
    end

    it "is not valid without a name" do
      @restaurant.name = nil
      @restaurant.should_not be_valid
    end
  end

  describe "Associations" do
    before(:each) do
      @restaurant.preferences << Preference.new
    end

    it "has_many Preferences" do
      @restaurant.should have(:no).errors_on(:preferences)
    end

    it "has_many Users" do
      @restaurant.preferences.last.user = User.new
      @restaurant.should have(:no).errors_on(:users)
    end
  end
end
