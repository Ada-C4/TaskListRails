class Person < ActiveRecord::Base
	has_many :tasks

	def completed_tasks
		tasks = self.tasks.find_all do |task|
			!task.completed_at.nil?
		end
		return tasks
	end

	def working_tasks
		tasks = self.tasks.find_all do |task|
			task.completed_at.nil?
		end
		return tasks
	end

end
