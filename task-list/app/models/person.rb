class Person < ActiveRecord::Base
  has_many :tasks

  def count_incomplete
    t = self.tasks
    incomplete = t.where(completed_date: nil)
    incomplete.length
  end


end
