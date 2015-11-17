class Person < ActiveRecord::Base
  has_many :tasks


  def incomplete_tasks
     t = self.tasks
     incomplete_tasks = t.where(date_completed: nil)
     incomplete_tasks.count
  end
end
