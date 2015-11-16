require "pry"

class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task_name = params[:name]
    task = Task.where(name: @task_name)[0]
    @description = task.description
    @completed_status = task.complete
    date = task.completed_date
    if date == nil
      @completed_date = nil
    else
      @completed_date = "#{date.month}/#{date.day}/#{date.year}"
    end
  end

  def new
      @task = Task.new
      @url = '/tasks/'
      @method = "post"
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def destroy
    to_delete = Task.find_by(name: params[:name])
    Task.destroy(to_delete.id)
    redirect_to "/"
  end

  def complete
    task = Task.find_by(name: "#{params[:name]}")
    task.update(completed_date: "#{Time.now}", complete: true)
    @task_name = task.name
    @description = task.description
    date = task.completed_date
    @completed_date = "#{date.month}/#{date.day}/#{date.year}"
  end

  def edit
    @task = Task.find_by(name: params[:name])
    @url = '/tasks/:name/update'
    @method = "patch"
  end

  def update
    @task = Task.find_by(name: task_params[:task][:name])
    @old_name = @task.name
    @old_description = @task.description
    @task.update(task_params[:task])
  end

  private

  def task_params
    params.permit(task:[:name, :description])
  end

end
