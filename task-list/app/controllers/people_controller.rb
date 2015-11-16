class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
      id = params[:id]
    @person = Person.find(id)
  end

  def task_show
    id = params[:id]
    person = Person.find(id)
    tasks = person.tasks
    @tasks = tasks.order(:completed_date)
  end
end
