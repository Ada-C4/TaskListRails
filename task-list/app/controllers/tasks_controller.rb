class TasksController < ApplicationController

  def index
    tasks = Task.all
    @tasks = tasks.order(:completed_date)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end
end
