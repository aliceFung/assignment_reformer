class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(check_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(check_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end


  def whitelisted_user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def check_params
    if params[:user]
      whitelisted_user_params
    else
      {:username => params[:username],
       :email    => params[:email],
       :password => params[:password]}
   end
  end
end
