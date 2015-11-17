class Person < ActiveRecord::Base
  has_many :tasks

  def incomplete
    t = self.tasks
    t = t.where(complete: false)
    return t
  end
end
