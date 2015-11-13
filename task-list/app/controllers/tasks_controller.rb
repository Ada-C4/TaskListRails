class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @title="LIST OF TASKS"
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @title = "Task # #{id}"
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def destroy
    id = params[:id]
    Task.destroy(id)
    redirect_to "/"
  end
  
  private

  def task_params
    params.permit(task:[:name, :description])
  end



end
