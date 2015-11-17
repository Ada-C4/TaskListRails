class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
    @tasks = @person.tasks
  end

  def task_by_person
    id = params[:id]
    @person_tasks = Person.find(id).tasks
    @person = Person.find(id)

  end

  # def task_by_person
  #
  # end

end
