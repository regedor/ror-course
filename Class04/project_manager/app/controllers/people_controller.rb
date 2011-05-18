class PeopleController < ApplicationController
  before_filter :authenticate, :only => :show

  def index
    @people = Person.all
  end
  
<<<<<<< HEAD
  def show
    @person = Person.find(params[:id])
=======
  def new
    @person = Person.new
    
    repond_with @person
>>>>>>> 00af4f9dea3de5bb232b83d5ffa9a522bc10951c
  end
  private
  
  def authenticate
    if params[:id] == "2"
      redirect_to people_url, :notice => "That page is restricted."
    end
  end

end
