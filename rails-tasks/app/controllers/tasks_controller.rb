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
    binding.pry
    if date == nil
      @completed_date = nil
    else
      @completed_date = "#{date.month}/#{date.day}/#{date.year}"
    end
  end

  def new

  end

end
