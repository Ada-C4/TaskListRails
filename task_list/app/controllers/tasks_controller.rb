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
    @action = "create"
  end

  def create
    Task.create(task_params[:task])
    redirect_to '/'
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to '/'
  end

  def edit
    @task = Task.find(params[:id])
    @title = "Edit Task"
    @action = "update"
  end

  def toggle_complete
    Task.update(params[:id], :completed_at => Time.now)
    redirect_to '/'
  end

  def update
    Task.update(params[:id], name: task_params[:task][:name], description: task_params[:task][:description])
    redirect_to '/'
  end

  private
  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end
end
