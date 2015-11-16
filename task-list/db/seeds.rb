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

seed_people = [
  {name: "Shia"},
  {name: "Hailey"},
  {name: "David"},
  {name: "Alex"},
  {name: "Graham"},
  {name: "Daniel"},

]

seed_people.each do |seed|
  Person.create(seed)
end

tasks = [
  { name: "The First Task", description: "", person_id: 2, completed: random_time },
  { name: "Go to Brunch", description: "", person_id: 3 },
  { name: "Go to Lunch", description: "", person_id: 4, completed: random_time },
  { name: "Go to Second Lunch", description: "", person_id: 5 },
  { name: "Play Video Games", description: "", person_id: 6, completed: random_time },
  { name: "High Five Somebody You Don't Know", description: "", person_id: 3, completed: random_time },
  { name: "Plant Flowers", description: "", person_id: 3, completed: random_time },
  { name: "Call Mom", description: "", person_id: 3, },
  { name: "She worries, you know.", description: "", person_id: 3, },
  { name: "Nap.", description: "", person_id: 3, completed: random_time }
]

tasks.each do |task|
  Task.create task
end
