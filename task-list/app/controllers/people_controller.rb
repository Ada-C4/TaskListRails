class PeopleController < ApplicationController

  def index
    @people = Person.all
  end


  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def show_tasks
    id = params[:id]
    @person = Person.find(id)
    @tasks = @person.tasks
  end

end
