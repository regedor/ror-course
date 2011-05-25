class SessionsController < ApplicationController

  def new
   @session = Session.new 
  end

  def create
   @session = Session.new(params[:session])
   flash[:notice] = "Logged in successfully!" if @session.save
   respond_with @session
  end

  def show
    
  end
  
  def destroy
   flash[:notice] = "Logged out successfully!" if @session.destroy 
  end
end
