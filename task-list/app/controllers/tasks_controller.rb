require 'pry'
class TasksController < ApplicationController

  def index
    tasks = Task.all
    @tasks = tasks.order(:completed_date)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
    @title = "Add Task"
    @action = :create

  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  def complete
    Task.update(params[:id], :completed_date => Time.now)
    redirect_to "/"
  end

  def update
    Task.update(params[:id], task_params[:task] )
    redirect_to "/tasks/#{params[:id]}"
  end

  def edit
    @task = Task.find(params[:id])
    @title = "Edit Task"
    @action = :update

  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed_date, :person_id])
  end

end
