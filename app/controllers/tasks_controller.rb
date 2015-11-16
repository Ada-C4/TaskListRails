class TasksController < ApplicationController

  def index
    @title = "Task List"
    @tasks = Task.all.order(:completed_at)
  end

# @task is an instance variable b/c you will need that info in the view.
#when its a redirect in the method, you only need a local variable, b/c...

  def show
    @title = "Task List"
    id = params[:id]  
    #here's a bundle of info and here's the the object you should do the method on. find(by)
    # is a ActiveRecord verb to take action on database.
    @task = Task.find(id)
  end

  def new
    @title = "Enter a new task"
    @task = Task.new
  end

  def create
    Task.create(task_params[:task])
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def complete
    complete = Task.find(params[:id])
    complete.completed_at = Time.now
    complete.save
    redirect_to "/tasks"
  end

  def update
    id = params[:id]
    @task = Task.find(id)
    @task.update(
      name: task_params[:task][:name],
      description: task_params[:task][:description]
        )
    redirect_to "/"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

  private

# task refers to task model we created when we said `rails generate model task`.
# Refers to task.rb model. Task is object that we're modifying and we're asking for the specific params of that hash.
# use binding.pry
  def task_params
    params.permit(task:[:name, :description])
  end


end
