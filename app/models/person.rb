class Person < ActiveRecord::Base
  has_many :tasks

  def sorted_tasks
		sorted_tasks = {completed: [], todo: []}
		self.tasks.each do |task|
      if task.completed_at.nil?
        sorted_tasks[:todo] << task
      else
        sorted_tasks[:completed] << task
      end
		end

    return sorted_tasks
  end
end
