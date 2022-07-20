class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  def show
    @name = current_user.name
    @cookings = current_user.cookings
  end
end
