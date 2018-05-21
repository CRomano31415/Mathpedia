class UsersController < ApplicationController
  def index
  	@users = User.all 
  end

  def show
  	@user = User.find(params[:id])
  end

  def downgrade
  	 @user = User.find(params[:id])

    if @user.downgrade!
      flash[:notice] = "You've been downgraded to standard. Your private wikis are now public."
      redirect_to edit_user_registration_path
    else
      flash[:error] = "There was an error creating your account. Please try again."
      redirect_to edit_user_registration_path
    end
  end
end
