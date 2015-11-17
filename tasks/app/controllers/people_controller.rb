class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def list
    id = params[:id]
    @person = Person.find(id)
  end

  def new
    @person = Person.new
  end

  def create
    Person.create(person_params[:person])
    redirect_to "/people/"
  end

  def delete
    id = params[:id]
    Person.delete(id)
    redirect_to "/people"
  end

  private

  def person_params
    params.permit(person:[:name, :photo, :bio])
  end
end
