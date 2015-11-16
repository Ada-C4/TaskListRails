class PeopleController < ApplicationController

  #shows all the people
  def index
    @people = Person.all
  end

  #shows all the info for a given person
  def show
    @person = Person.find(params[:id])
  end

  #shows all the completed and uncompleted tasks for a given person
  def tasks
  end

  private

  def person_params
    params.permit(person:[:name])
  end

end
