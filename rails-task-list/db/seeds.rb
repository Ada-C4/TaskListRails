# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_people = [
  { name: "Jessica", description: "Always hungry", lifetime_tasks: 0},
  { name: "Lolita", description: "Music Listener", lifetime_tasks: 0},
  { name: "Kepler", description: "Freeloader", lifetime_tasks: 0}
]

seed_people.each do |seed|
  Person.create seed
end

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "" },
  { name: "Go to Brunch", description: "", person_id: 2 },
  { name: "Go to Lunch", description: "", person_id: 3 },
  { name: "Go to Second Lunch", description: "" , person_id: 3},
  { name: "Play Video Games", description: "",  person_id: 1 },
  { name: "High Five Somebody You Don't Know", description: "", person_id: 3 },
  { name: "Plant Flowers", description: "", person_id: 2 },
  { name: "Call Mom", description: "", person_id: 2 },
  { name: "She worries, you know.", description: "" , person_id: 1},
  { name: "Nap.", description: "", person_id: 1 }
]

tasks.each do |task|
  Task.create task
end
