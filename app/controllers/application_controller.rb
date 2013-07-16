class ApplicationController < ActionController::Base
  protect_from_forgery

helper_method :current_user, :logged_in?

private


  def current_user
    @current ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
    flash[:error] = "You can't do that!"
    redirect_to root_path
    end
  end

 end
