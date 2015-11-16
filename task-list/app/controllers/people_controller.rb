class PeopleController < ApplicationController
  def index
    @people = Person.all
    @title= "List of People"
  end

  def show
    id = params[:id]
    @person = Person.find(id)
    @title = @person.name
  end

  def tasks
    id = params[:id]
    @person = Person.find(id)
    @title = "#{@person.name}'s Tasks"
  end
end
