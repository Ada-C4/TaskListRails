class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @title= "Task List"
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @title = @task.name
  end

  def new
    @title = "Create A New Task"
    @task = Task.new
  end

  def create
    task = Task.create(task_params)
    redirect_to "/"
  end

  def destroy
    id = params[:id]
    task = Task.find(id)
    task.delete
    redirect_to "/"
  end

  def edit
    @task = Task.find(params[:id])
    render :edit_form
  end

  def update
    id = params[:id]
    task = Task.find(id)
    task.update_attributes(task_params)
    redirect_to "/"
  end

  def complete
    task = Task.find(params[:id])
    task.completed_at = Time.now
    task.save!
    redirect_to "/"
  end

  def incomplete
    task = Task.find(params[:id])
    task.completed_at = nil
    task.save!
    redirect_to "/"
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :completed_at, :person_id)
  end

end
