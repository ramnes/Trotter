class UsersController < ApplicationController
  def new
    @user = User.new
    if session[:current_user_id]
      redirect_to Trott
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to @user, notice: "Welcome to Trotter, #{@user.name}!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
