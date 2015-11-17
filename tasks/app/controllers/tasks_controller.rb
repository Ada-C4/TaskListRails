
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new(person_id: params[:person_id])
    session[:return_to] = request.referer
  end

  def create
    Task.create(task_params[:task])
    if session[:return_to].nil?
      redirect_to "/"
    else
      redirect_to session[:return_to]
    end
    session[:return_to] = nil
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
    task.update(
    name: task_params[:task][:name],
    description: task_params[:task][:description],
    person_id: task_params[:task][:person_id]
    )
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

  private

  def task_params
    params.permit(task:[:name, :description, :person_id])
  end
end
