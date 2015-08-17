class UsersController < ApplicationController
  def authenticate
     @user = User.authenticate(params[:user][:email], params[:user][:password])
     if @user
      session[:id] = @user.id
    else
      redirect_to categories_path
    end
  end

  def login

  end

  def logout
    session.clear
    redirect_to categories_path
  end

  def new
    @user = User.new

  end

  def create
    @user = User.create(user_params)
    redirect_to categories_path
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end


end
