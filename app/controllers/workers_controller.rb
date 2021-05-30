class WorkersController < ApplicationController
  def index
    @users = User.where(profile: 0)
  end
end
