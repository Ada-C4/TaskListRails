
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
