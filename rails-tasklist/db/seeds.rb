# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "ta-da", completed_at: random_time, person_id: 2 },
  { name: "Go to Brunch", description: "hungryy", person_id: 1 },
  { name: "Go to Lunch", description: "still hungry", completed_at: random_time, person_id: 1 },
  { name: "Go to Second Lunch", description: "Hobbits!", person_id: 2 },
  { name: "Play Video Games", description: "funtime", completed_at: random_time, person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "duh", completed_at: random_time, person_id: 3 },
  { name: "Plant Flowers", description: "go light!", completed_at: random_time, person_id: 1 },
  { name: "Call Mom", description: "just cause", person_id: 4 },
  { name: "She worries, you know.", description: "momma!", person_id: 4 },
  { name: "Nap.", description: "zzzzzz", completed_at: random_time, person_id: 3 }
]

people = [
  {name: "Irene Adler"},
  {name: "Mycroft Holmes"},
  {name: "John Watson"},
  {name: "Sherlock Holmes"}
]

people.each do |person|
  Person.create(person)
end

tasks.each do |task|
  Task.create task
end
