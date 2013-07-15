class ApplicationController < ActionController::Base
  protect_from_forgery

helper_method :current_user, :logged_in?

private

# def authenticate
#     authenticate_or_request_with_http_basic do |name, password|
#       name == "josh" && password == "emmitt"
#     end
#   end

def current_user
    @current ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
 end
