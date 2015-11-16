class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @completed_tasks = @tasks.where.not(completed: nil)
    @current_tasks = @tasks.where(completed: nil)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
    @action = "create"
    @method = :post
    @title = "Task Information"
  end

  def edit
    @title = "Edit your task"
    id = params[:id]
    @action = "update"
    @method = :patch
    @task = Task.find(id)
    render "new"
  end

  def create
    Task.create(task_params[:task])
    redirect_to '/'
  end

  def destroy
    id = params[:id]
    @task =Task.find(id).destroy
    redirect_to '/'
  end

  def update
    Task.update(params[:id], task_params[:task])
    redirect_to '/'
  end

  def toggle_completed
    id = params[:id]
    task = Task.find(id)
    task.update(id)
    redirect_to '/'
  end

  #def completed_tasks
  #  @tasks.where.not(completed_at: nil)
  #end

  #def current_tasks
  #  @tasks.where(completed_at: nil)
  #end

  private

  def task_params
    #this makes strong params
    params.permit(task:[:name, :description])
  end
end
