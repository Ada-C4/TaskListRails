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
end
