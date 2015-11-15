class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @title="LIST OF TASKS"
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @title = "Task # #{id}"
  end

  def new
      @task = Task.new
      @action = "create"
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

  def set_completed
    Task.update(params[:id], :completed_at => Time.now)
    redirect_to "/"
  end

  def update
    @task.update(params[:id], name: task_params[:task][:name], description: task_params[:task][:description])

  end

  def edit
    @task = Task.find(params[:id])
    @action = "update"

    render :new
  end



  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end


end
