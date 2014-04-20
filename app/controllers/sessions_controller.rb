class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.password == params[:password]
      session[:current_user_id] = user.id
      redirect_to "/users/#{user.id}", notice: "Hi, #{user.name}!"
    else
      flash[:error] = "Wrong username or password."
      redirect_to root_url
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url, notice: "Good bye!"
  end
end
