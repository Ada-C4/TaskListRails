class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
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
    redirect_to "/"
  end

  def update
    @task = Task.find(params[:id])
    if params[:completed_at] == nil
      @task.update(:completed_at => Time.now)
    else
      @task.update(task_params)
    end
    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end
end
