class PeopleController < ApplicationController

  def index
    @people = Person.all
    @title = "Peeps"
  end

  def show
    id = params[:id]
    @people = Person.find(id)
    @title = "Peep Info"
  end

  def show_tasks
    id = params[:id]
    @tasks = Person.find(id).tasks
    @title = "Peep's Tasks"
  end
end
