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
    if @edit != true
      @task = Task.new
    end
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

  def update
    Task.update(params[:id], :completed_at => Time.now)
    redirect_to "/"

  end

  def edit
    @task = Task.find(params[:id])
    @edit = true
    redirect_to 'tasks/new'
  end



  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end



end
