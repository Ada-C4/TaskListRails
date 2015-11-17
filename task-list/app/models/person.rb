class Person < ActiveRecord::Base
  has_many :tasks

  def incomplete_tasks
    t = self.tasks
    t = t.where(completed: nil)
    return t
  end

  def complete_tasks
    t = self.tasks
    t = t.where.not(completed: nil)
    return t
  end
end
