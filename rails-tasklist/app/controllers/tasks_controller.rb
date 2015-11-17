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
    redirect_to "/"
  end

  def delete
    id = params[:id]
    Task.destroy(id)
    redirect_to "/"
  end

  def update
    id = params[:id]
    task = Task.find(id)
    task.update(
      name: task_params[:task][:name],
      description: task_params[:task][:description],
      person_id: task_params[:task][:person_id]
      )
    # task.update(task_params[:task])
    redirect_to "/"
  end

  def completed
    id = params[:id]
    task = Task.find(id)
    if task.completed_at.nil?
      task.update(completed_at: Time.now)
    else
      task.update(completed_at: nil)
    end
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
    name = params[:name]
    description = params[:description]
  end

  def find_next_id(current_id)
    if current_id == Task.last.id
      next_id = Task.first.id
    else
      next_id = Task.where('id > ?', current_id).first.id
    end
    return next_id
  end

  private

  def task_params
    params.permit(task:[:name, :description, :completed_at, :person_id])
  end
end
