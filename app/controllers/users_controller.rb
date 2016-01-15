class UsersController < ApplicationController
  def index
    @users = User.all
    @post = Post.new

  end

  def show
  end

  def new
    @user = User.new
  end

  def create
  user = User.find_by(email: params[:login][:email])

  if user.nil?
    user = User.new(user_params)
    if user.save
      @error = "Signed up. You may now login."
      redirect_to user_path(user)
    else
      redirect_to new_user_path
    end
  else
    @error = "You already exist"
    redirect_to new_user_path
  end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :address, :phone_number)
    end
end
