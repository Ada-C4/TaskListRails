class TasksController < ApplicationController
  def index
    @sorted_tasks = Task.list
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
    @title = "Add"
    @method = "post"
  end

  def create
    Task.create(task_params[:task])

    redirect_to "/"
  end

  def complete_task
    Task.update(params[:id], completed_at: Time.now)

    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
    @title = "Modify"
    @method = "patch"

    render :new
  end

  def update
    Task.update(params[:id], task_params[:task])

    redirect_to "/"
  end

  private

  def task_params
    params.permit(task:[:name, :description])
  end
end
