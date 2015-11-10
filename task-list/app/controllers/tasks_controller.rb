class TasksController < ApplicationController
  def task_list
		sorted_tasks = {completed: [], todo: []}
		Task.all.each do |task|
			sorted_tasks[:completed] << task unless task.completed_at.nil?
			sorted_tasks[:todo] << task if task.completed_at.nil?
		end

    return sorted_tasks
	end

  def index
    @sorted_tasks = task_list
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end
end
