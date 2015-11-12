class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])

  # OR
  #
  # t= Task.new(param[:task])
  # t.save
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/tasks"
  end
  private

  def task_params
    params.permit(task:[:name, :descript, :date_completed])
  end
end
