class TasksController < ApplicationController

# the instance variables make it possible for you to view information on the page
  def index
    @tasks = Task.all
    # raise
    @peeps = Person.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to "/tasks"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/tasks"
  end

  def complete
    task = Task.find(params[:id])
    task.completed_date = Time.now
    task.save
    redirect_to "/tasks"
  end

  def edit
      @task = Task.find(params[:id])
  end

  def update
    id = params[:id]
    task = Task.find(id)
    # changed this to match Annalee's because editing from the shopw page wasn't working
    # task = Task.update(params[:id],
    # name: task_params[:task][:name],
    # description: task_params[:task][:description])
    task.update_attributes(task_params)
    redirect_to "/tasks"
  end

##### PRIVATE ######
  private

# changing this, along with my update method, made editing my task from the show page possible.
  def task_params
    params.require(:task).permit(:name, :description, :person_id)
  end



end
