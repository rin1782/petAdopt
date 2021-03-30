class UsersController < ApplicationController
  

  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

 
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

 
  def destroy
    @user.destroy
  end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :id)
  end
