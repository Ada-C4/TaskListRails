class Task < ActiveRecord::Base
	def self.completed
		return Task.where("completed_at < ?", Time.now)
	end
	def self.working
		return Task.where('completed_at IS NULL')
	end
end

