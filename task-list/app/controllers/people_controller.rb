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
    @tasks = Person.find(id).sorted_tasks
  end
end
