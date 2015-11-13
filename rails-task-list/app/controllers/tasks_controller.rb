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
    Task.find(params[:id]).destroy
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
    render :new
  end

  def update
    id = params[:id]
    Task.find(id).update(task_params[:task])
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name,:description])
  end
end
