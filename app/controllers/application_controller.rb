class ApplicationController < ActionController::Base

  helper_method :current_admin, :logged_in?
  def current_admin
    @current_admin ||= Admin.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
