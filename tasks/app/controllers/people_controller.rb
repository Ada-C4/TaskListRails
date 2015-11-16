class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def showtasks
    id = params[:id]
    @person = Person.find(id)
    @tasks = Person.find(id).tasks
  end

  private

  def task_params
    params.permit(person:[:id])
  end

end
