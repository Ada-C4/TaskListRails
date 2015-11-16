class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def create
    binding.pry

    Task.create(task_params[:task])
    redirect_to '/tasks/'
  end

  def destroy
    Task.destroy(params["id"])
    redirect_to '/tasks/'
  end

  def complete
    task = Task.find(params[:id])
    task.done_date = Time.now
    task.save
    redirect_to '/tasks/'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params[:task])

    redirect_to '/tasks/'
  end

  private
  def task_params
    params.permit(task:[:name, :description, :person_id])
  end

end
