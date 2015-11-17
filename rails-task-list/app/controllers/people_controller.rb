class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def tasks
    id = params[:id]
    @person = Person.find(id)
    @tasks = @person.tasks
  end

  private

  def person_params
    params.permit(person:[:name,:description,:tasks_completed])
  end

end
