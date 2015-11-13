class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:comp_date)
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
    redirect_to '/tasks'
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to '/tasks'
  end

  def complete
    task = Task.find(params[:id])
    task.comp_date = Time.now
    task.save
    redirect_to '/tasks'
  end

  def incomplete
    task = Task.find(params[:id])
    task.comp_date = nil
    task.save
    redirect_to '/tasks'
  end

  private

  def task_params
    params.permit(task:[:name, :description, :comp_date])
  end

end
