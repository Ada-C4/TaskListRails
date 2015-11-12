require "pry"

class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task_name = params[:name]
    @description = Task.where(name: @task_name)[0].description
  end

end
