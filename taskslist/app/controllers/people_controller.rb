class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    Person.create(person_params[:person])
    redirect_to '/people/'
  end

  def show_tasks
    @person = Person.find(params[:id])
  end

  def destroy
    Person.destroy(params[:id])
    redirect_to '/people/'
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    person.update(person_params[:person])

    redirect_to '/people/'
  end

  private
  def person_params
    params.permit(person:[:name, :fav_color])
  end
end
