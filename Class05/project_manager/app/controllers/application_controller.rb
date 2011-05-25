class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :logged_in?
  before_filter :current_user

  def current_user
    @current_user ||= Person.find session[:current_user] if session[:current_user]
  end

  def logged_in?
    @current_user && true or false
  end



end
