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
		@person = Person.new
	end

	def create
		Person.create(people_params[:person])
		redirect_to '/people'
	end

	def update
		@person = Person.find(params[:id])
		@person.update(people_params[:person])
		redirect_to '/people'
	end

	def destroy
		Person.find(params[:id]).destroy
		redirect_to '/people'
	end

	private

	def people_params
		params.permit(person:[:name, :bio])
	end
end
