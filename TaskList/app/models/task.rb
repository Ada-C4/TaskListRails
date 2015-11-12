class Task < ActiveRecord::Base
	def self.completed
		return Task.where("completed_at < ?", Time.now)
	end
end

