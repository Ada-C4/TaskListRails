class PeopleController < ApplicationController

  def index
    @people = Person.all
  end


  def show
    id = params[:id]
    @task = Task.find(id)
  end

end
