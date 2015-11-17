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
    Task.destroy(params[:id])

    redirect_to "/"
  end

  def edit
    id = params[:id]
    @person = Person.find(id)
    @title = "Modify"
    @action = "update"

    render :new
  end

  def update
    Task.update(params[:id], task_params[:task])

    redirect_to "/"
  end

  private

  def person_params
    params.permit(person:[:name, :bio])
  end
end
