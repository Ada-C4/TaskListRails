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

  def new
    @person = Person.new
    @title = "Add"
    @action = "create"
  end

  def create
    Person.create(person_params[:person])

    redirect_to "/people"
  end

  def destroy
    Person.destroy(params[:id])

    redirect_to "/people"
  end

  def edit
    id = params[:id]
    @person = Person.find(id)
    @title = "Modify"
    @action = "update"

    render :new
  end

  def update
    Person.update(params[:id], person_params[:person])

    redirect_to "/people"
  end

  private

  def person_params
    params.permit(person:[:name, :bio])
  end
end
