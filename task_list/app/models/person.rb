class Person < ActiveRecord::Base
  has_many :tasks

  def not_complete
    complete = self.tasks.where({:completed_at => nil})
    return complete.length
  end
end
