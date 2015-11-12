class TasksController < ApplicationController
  def index
    @title = "Task List"
    @tasks = Task.all
  end

  def show
    @title = "About This Task"
    id = params[:id]
    @tasks = Task.where(id: id)
  end

  def new
    @title = "Add a Task"
    @task = Task.new()
  end

  def create
    Task.create(task_params[:post])
    # redirect_to('/')
  end

  private
  def task_params
    params.permit(task:[:name, :description])
  end

end
