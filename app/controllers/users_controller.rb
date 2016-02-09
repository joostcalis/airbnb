class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    if @user = User.create(user_params)
      redirect_to root_path
    else
      render :new
    end
  end
  def show
    	@user = User.find(params[:id])
  	end


  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :city)
  end
end
