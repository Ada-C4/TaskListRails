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
end
