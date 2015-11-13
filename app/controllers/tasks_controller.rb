class TasksController < ApplicationController

  def index
    @title = "Task List"
    @tasks = Task.all
  end

  def show
    @title = "Task List"
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @title = "Enter a new task"
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    @task = Task.find(id)
    @task.update(
      name: task_params[:task][:name],
      description: task_params[:task][:description]
        )
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description])
  end


end
