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

  def update
    id = params[:id]
    task = Task.find(id)
    task.update_attributes(task_params)
    redirect_to "/tasks/"
  end

  def completed
    task = Task.find(params[:id])
    task.date_completed = Time.now
    task.save!
    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end

  def create
    task= Task.create(task_params)
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/tasks"
  end

  private

  def task_params
    params.require(:task).permit(:name, :descript, :date_completed, :person_id)
  end
end
