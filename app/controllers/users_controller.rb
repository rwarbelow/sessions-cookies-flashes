class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User successfully created"
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end