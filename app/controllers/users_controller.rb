class UsersController < ApplicationController

  def update
    @user = User.find(current_user.id)
    @user.name = params["user"]["name"]
    @user.last_name = params["user"]["last_name"]
    @user.document_id = params["user"]["document_id"]
    @user.profesion_id = params["user"]["profesion_id"] unless @user.profile == 1
    @user.email = params["user"]["email"]
    
    respond_to do |format|
      if @user.save
        format.js
      end
    end
  end

end