class Person < ActiveRecord::Base
  has_many :tasks

  def self.incomplete(pers_id)
    person = Person.find(pers_id)
    tasks = person.tasks
    incomplete = tasks.where(completed_date: nil)
    return incomplete.length
  end
 
end
