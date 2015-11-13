class TasksController < ApplicationController

  def complete
    @task = Task.find(params[:id])
    @task.update(completed_date: Date.current)
    redirect_to action: :index
  end


  def create
    Task.create(task_params[:task])
    redirect_to action: :index
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to action: :index
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def pre_edit
    @tasks = Task.all
  end

  def remove
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    @task = Task.find(id)
    @task.update(task_params[:task])
    redirect_to action: :index
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed_date])
  end

end
