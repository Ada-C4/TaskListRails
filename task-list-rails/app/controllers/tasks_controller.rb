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
    Task.update(params[:id],
      name: task_params[:task][:name],
      description: task_params[:task][:description]
      )
    redirect_to "/"
  end

  def complete
    @task = Task.find(params[:id])
    @task.update(completed: true, completed_at: Time.now)
    @task.save
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed, :completed_at])
  end
end
