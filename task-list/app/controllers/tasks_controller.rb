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
    id = params[:id]
    @task = Task.find(id)
    if !params[:completed_at].nil?
      @task.completed_at = params[:completed_at]
      redirect_to "/"
      #update the task comleted date
      #make instance varibale boolean so the view will know
    else
      #it is probably an update of the task ->
    end
  end



  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end



end
