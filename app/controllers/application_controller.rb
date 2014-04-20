class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def _current_user
    if session[:current_user_id]
      User.find(session[:current_user_id])
    end
  end

  helper_method :_current_user
end
