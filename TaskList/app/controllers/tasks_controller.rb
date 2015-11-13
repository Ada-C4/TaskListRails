class TasksController < ApplicationController

	def index
		@tasks = Task.all
		@working_tasks = Task.working
		@completed_tasks = Task.completed
	end

	def show
		id = params[:id]
		@task = Task.find(id)
		@completed_time = @task.completed_at.strftime("Completed %B %e, %Y.")
	end

	def new
		@task = Task.new
	end

	def create
		Task.create(task_params[:task])
		redirect_to '/'
	end

	def destroy
		Task.find(params[:id]).destroy
		redirect_to '/'
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		id = params[:id]
		@task = Task.find(id)
		if params[:completed] == "true"
			@task.update(:completed_at => Time.now)
		else
			@task.update(update_params[:task])
		end
		redirect_to '/'
	end

	private

	def task_params
		params.permit(task:[:name, :description])
	end

	def update_params
    params.permit(task: [:name, :description, :completed])
  end

end
