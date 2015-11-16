people = [
  { name: "Ricky", fav_color: "green" },
  { name: "Fred", fav_color: "rainbow"},
  {name: "Alyssa", fav_color: "red"},
  {name: "Brittany", fav_color: "black"},
]

people.each do |person|
  Person.create person
end

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "", done_date: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 2 },
  { name: "Go to Lunch", description: "", done_date: random_time, person_id: 3 },
  { name: "Go to Second Lunch", description: "", person_id: 4 },
  { name: "Play Video Games", description: "", person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "", done_date: random_time, person_id: 1 },
  { name: "Plant Flowers", description: "", done_date: random_time, person_id: 1 },
  { name: "Call Mom", description: "", person_id: 2 },
  { name: "She worries, you know.", description: "", person_id: 2 },
  { name: "Nap.", description: "", done_date: random_time, person_id: 3 }
]

tasks.each do |task|
  Task.create task
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
