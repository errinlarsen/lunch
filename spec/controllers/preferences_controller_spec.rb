require "spec_helper"

describe PreferencesController do
  describe "GET index" do
    it "assigns @preferences" do
      pref = Preference.create
      get :index
      assigns(:preferences).should include(pref)
    end

    it "renders the index template" do
      get :index
      response.should render_template(:index)
    end
  end
end
