class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @user = User.order(id: :asc)
  end

  def destroy
    user = User.find(parmas[:id])
    user.destroy!
    redirect_to user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
