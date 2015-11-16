class Person < ActiveRecord::Base
  has_many :tasks

  def self.num_completed(person_id)
    person = Person.find(person_id)
    tasks = person.tasks
    completed = tasks.where(completed: true)
    return completed.length
  end

  def self.num_not_completed(person_id)
    person = Person.find(person_id)
    task_num = person.tasks.length
    return task_num - num_completed(person_id)
  end

end
