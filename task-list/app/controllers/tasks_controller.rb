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
      @title = "New Task"
  end

  def create
    Task.create(task_params[:task])
    redirect_to '/tasks/'
  end

  def destroy
    id = params[:id]
    Task.destroy(id)
    redirect_to '/tasks/'
  end

  def set_completed
    Task.update(params[:id], :completed_at => Time.now)
    redirect_to '/tasks/'
  end

  def update
    task = Task.find(params[:id])
    task.update(name: task_params[:task][:name], description: task_params[:task][:description])
    redirect_to '/tasks/'
  end

  def edit
    @task = Task.find(params[:id])
    @action = "update"
    @title = "Edit Task"

    render 'tasks/new'
  end



  private

  def task_params
    params.permit(task:[:name, :description])
  end


end
