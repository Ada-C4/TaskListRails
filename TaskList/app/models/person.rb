class Person < ActiveRecord::Base
	has_many :tasks

	# def self.completed_tasks
	# 	return Task.where("completed_at < ?", Time.now)
	# end
	# def self.working_tasks
	# 	return Task.where('completed_at IS NULL', 'person_id ?'), self.id
	# end
end
