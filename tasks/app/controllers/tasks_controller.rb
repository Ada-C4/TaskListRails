class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @num_tasks = 11
    @task = Task.find(id)
  end
end
