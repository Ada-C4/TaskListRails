class Task < ActiveRecord::Base
  def self.list
		sorted_tasks = {completed: [], todo: []}
		Task.all.each do |task|
      if task.completed_at.nil?
        sorted_tasks[:todo] << task if task.completed_at.nil?
      else
        sorted_tasks[:completed] << task
      end
		end

    return sorted_tasks
  end

  def status
    return "Completed" unless self.completed_at.nil?
    return "In Progress" if self.completed_at.nil?
  end
end
