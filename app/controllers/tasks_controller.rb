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
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    # delete_task = Task.find(params[:id])
    # delete_task.destroy(task_params[:task])
    # delete_task.destroy
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description])
  end


end
