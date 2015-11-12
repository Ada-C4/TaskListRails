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
    Task.create(post_params[:task])
    redirect_to "/"
  end

  private

  def post_params
    params.permit(task:[:name, :description])
  end

  def delete
    id = params[:id]
    Task.find(id).destroy

    redirect_to "/"
  end

end
