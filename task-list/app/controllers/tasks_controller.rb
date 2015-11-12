class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @title= "Task List"
  end
  def show
    id = params[:id]
    @task = Task.find(id)
    @title = @task.name
  end
  def new
    @title = "Create A New Task"
    @task = Task.new
  end
  def create
    @task = Task.create(task_params)
    redirect_to "/"
  end
  def task_params
    params.require(:task).permit(:name, :description, :completed_at)
  end
end
