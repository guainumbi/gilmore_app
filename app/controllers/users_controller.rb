class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create!(user_params)
    redirect_to users_path
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update!(user_params)
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
