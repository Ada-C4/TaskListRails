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
    redirect_to "/tasks"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/tasks"
  end

  def update
    task = Task.find(params[:id])
    @complete_time = Time.now
    task.save
    redirect_to "/tasks"
  end

##### PRIVATE ######
  private

  def task_params
    params.permit(task:[:name, :description])
  end



end
