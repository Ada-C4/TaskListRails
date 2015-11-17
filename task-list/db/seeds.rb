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
  { name: "Cook All The Things", description: "", completed_at: random_time, person_id: 2 },
  { name: "Go to Brunch", description: "Yum", person_id: 3 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 4 },
  { name: "Go to Second Lunch", description: "", person_id: 1 },
  { name: "Play Video Games", description: "Mario Kart", completed_at: random_time, person_id: 5 },
  { name: "Adventure Time", description: "", completed_at: random_time, person_id: 6 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 2 },
  { name: "Call Mom", description: "", person_id: 4 },
  { name: "Walk Unicorn", description: "Around Central Park", person_id: 6 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 1 },
  { name: "Adopt a monkey", description: "Name him Marcel", completed_at: random_time, person_id: 4 }
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Chandler"},
  {name: "Monica"},
  {name: "Rachel"},
  {name: "Ross"},
  {name: "Joey"},
  {name: "Phoebe"}
]

people.each do |person|
  Person.create person
end
