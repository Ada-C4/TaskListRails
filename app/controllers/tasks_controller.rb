class TasksController < ApplicationController

	def index
		@tasks = Task.all
		@working_tasks = Task.working
		@completed_tasks = Task.completed
	end

	def show
		id = params[:id]
		@task = Task.find(id)
		@completed_time = @task.completed_at.strftime("%B %e, %Y") if !@task.completed_at.nil?
	end

	def new
		@task = Task.new
	end

	def create
		Task.create(task_params[:task])
		redirect_to '/tasks'
	end

	def destroy
		Task.find(params[:id]).destroy
		redirect_to '/tasks'
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if params[:completed] == "true"
			@task.update(:completed_at => Time.now)
		else
			@task.update(update_params[:task])
		end
		redirect_to '/tasks'
	end

	private

	def task_params
		params.permit(task:[:name, :description, :person_id])
	end

	def update_params
    params.permit(task: [:name, :description, :completed, :person_id])
  end

end
