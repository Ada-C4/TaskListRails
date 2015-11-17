class Person < ActiveRecord::Base
  has_many :tasks

  def uncompleted
    completed = self.tasks.where({:completed_at => nil})
    return completed.length
  end
end
