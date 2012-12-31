class LunchController < ApplicationController
  def index
    redirect_to(:entries)
  end
end
