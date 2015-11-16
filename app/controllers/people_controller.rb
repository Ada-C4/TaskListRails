class PeopleController < ApplicationController

  def index
    @title = "Task Assignments"
    @people = Person.all
  end

  def show
    @title = "Your assigned tasks"
    # clarify what the below is doing
    id = params[:id]
    @assigned_to = Person.find(id)
    @tasks = Task.all

  end

end
