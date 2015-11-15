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
    @task = Task.find(params[:id])
    # if params[:commit] == "Completed"
      if params[:Completed] == true
        Task.update(params[:id], :completed_at => Time.now)
        redirect_to "/"
      else
        @task.update(update_params[:task])
        redirect_to "/"
      end
  end

  def edit
    @task = Task.find(params[:id])
    render :edit
  end



  private

  def task_params
    params.permit(task:[:name, :description, :completed_at])
  end

  def update_params
    params.permit(task: [:name, :description])
  end



end
