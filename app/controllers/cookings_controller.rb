class CookingsController < ApplicationController
  def index
  end

  def new
    @cooking = Cooking.new
  end
end
