class PeopleController < ApplicationController
  before_filter :authenticate, :only => :show

  def index
    @people = Person.all
  end
  
  def show
    @person = Person.find(params[:id])
  end

  private
  
  def authenticate
    if params[:id] == "2"
      redirect_to people_url, :notice => "That page is restricted."
    end
  end

end
