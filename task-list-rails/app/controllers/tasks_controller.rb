class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def welcome
    redirect_to "/tasks"
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def destroy
    id = params[:id]
    Task.destroy(id)
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    Task.update(params[:id], task_params[:task])
    redirect_to "/"
  end

  def toggle_complete
    task = Task.find(params[:id])
    if !task.completed
      task.update(completed: true, completed_at: Time.now)
    else
      task.update(completed: false, completed_at: nil)
    end
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed, :completed_at, :person_id])
  end
end
