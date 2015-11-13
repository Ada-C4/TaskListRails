class TasksController < ApplicationController

	def index
		@tasks = Task.all
		@working_tasks = Task.where('completed_at IS NULL')
		@completed_tasks = Task.completed
	end

	def show
		id = params[:id]
		@task = Task.find(id)
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
		time = Time.now
		id = params[:id]
		if params[:completed] == true

		redirect_to '/'
	end

	private

	def task_params
		params.permit(task:[:name, :description])
	end

end
