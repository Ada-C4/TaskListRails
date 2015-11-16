class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @url = "create"
    @legend = "Create a Task"
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
    Task.update(params[:id], task_params[:task])
    redirect_to "/"
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.update(:completed_at => Time.now)
    redirect_to "/"
  end

  def edit
    @url = "update"
    @legend = "Update a Task"
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end
end
