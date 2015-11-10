class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @task_info_hash = @task.attributes
  end
end
