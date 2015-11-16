class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:person_id]
    @person = Person.find(id)
  end

  def tasks
    id = params[:person_id]
    @person = Person.find(id)
    @remaining_tasks= @person.incomplete_tasks
  end
end
