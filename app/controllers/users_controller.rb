class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params)
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(strong_params)
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(strong_params)
    redirect_to :roots
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :root
  end

  private

  def strong_params
    params.require(:user).permit(:username, :bio, :gender, :age)
  end
end
