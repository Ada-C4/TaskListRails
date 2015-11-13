
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @next_id = find_next_id(id.to_i)
    @task = Task.find(id)
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
    Task.delete(id)
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    task = Task.find(id)
    task.update(name: task_params[:task][:name], description: task_params[:task][:description])
    redirect_to "/"
  end

  def completed
    id = params[:id]
    task = Task.find(id)
    if task.complete.nil?
      task.update(complete: Time.now)
    else
      task.update(complete: nil)
    end
    redirect_to "/"
  end

# Finds the id of the next item in the task list
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
    params.permit(task:[:name, :description])
  end
end
