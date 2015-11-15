class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/tasks"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/tasks"
  end

  def complete
    task = Task.find(params[:id])
    task.completed_date = Time.now
    task.save
    redirect_to "/tasks"
  end

  def edit
      @task = Task.find(params[:id])
  end

  def update
    Task.update(params[:id],
    name: task_params[:task][:name],
    description: task_params[:task][:description])
    redirect_to "/tasks"
  end

##### PRIVATE ######
  private

  def task_params
    params.permit(task:[:name, :description])
  end



end
