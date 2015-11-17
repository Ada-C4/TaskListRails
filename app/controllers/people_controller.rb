class PeopleController < ApplicationController
	def index
		@people = Person.all
	end
	def show
		@person = Person.find(params[:id])
		@completed_tasks = @person.completed_tasks
	end
	def tasks
		@person = Person.find(params[:id])
		@working_tasks = @person.working_tasks
		@completed_tasks = @person.completed_tasks
	end
	def new
		People.create(people_params[:person])
		redirect to '/people'
	end

	private

	def people_params
		params.permit(:person[:name, :bio, :tasks])
	end
end
