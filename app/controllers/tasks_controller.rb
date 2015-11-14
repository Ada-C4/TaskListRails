class TasksController < ApplicationController

  def index
    @title = "Task List"
    @tasks = Task.all.order(:completed_at)
  end

  def show
    @title = "Task List"
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @title = "Enter a new task"
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def complete
    complete = Task.find(params[:id])
    complete.completed_at = Time.now
    complete.save
    redirect_to "/tasks"
  end

  def update
    id = params[:id]
    @task = Task.find(id)
    @task.update(
      name: task_params[:task][:name],
      description: task_params[:task][:description]
        )
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description])
  end


end
