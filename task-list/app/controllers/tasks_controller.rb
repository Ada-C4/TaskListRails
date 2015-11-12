class TasksController < ApplicationController

  def create
    Task.create(task_params[:task])
    redirect_to "/tasks/"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to action: :index
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def remove
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def task_params
    params.permit(task:[:name, :description, :completed_date])
  end

end
