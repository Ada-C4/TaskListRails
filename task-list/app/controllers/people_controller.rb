class PeopleController < ApplicationController

  def index
    @people = Person.all
  end


  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def show_tasks
  end

end
