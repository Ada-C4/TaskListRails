class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:person_id]
    @person = Person.find(id)
  end
end
