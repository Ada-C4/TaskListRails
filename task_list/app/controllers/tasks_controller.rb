class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @title = "Tasks"
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @title = "Task Info"
  end

  def new
    @task = Task.new
    @title = "New Task"
  end

  def create
    Task.create(task_params[:task])
    redirect_to '/'
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to '/'
  end

  def update
    Task.update(params[:id],:completed_at => Time.now)
    redirect_to '/'
  end

  private
  def task_params
    params.permit(task:[:name, :description])
  end
end
