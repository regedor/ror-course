class SessionsController < ApplicationController

  def new
  end

  def create
    query = Person.find_by_login(params[:session][:username], params[:session][:password])
    if query.empty?
      flash[:alert] = "Invalid login!"
      redirect_to new_session_path
    else
      flash[:notice]         = "Logged in successfully!"
      session[:current_user] = query.first.id
      redirect_to root_path
    end
  end

  
  def destroy
    session[:current_user] = nil
    flash[:notice] = "Logged out successfully!"
    redirect_to root_path
  end

end
