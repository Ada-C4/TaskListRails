class TasksController < ApplicationController
  def index
    @sorted_tasks = Task.list
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @status = @task.status
  end
end
