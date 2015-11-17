def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Eat Lunch", description: "grilled cheese. Butter bread this time", completed_date: random_time, person_id: 2 },
  { name: "Hike", description: "Discovery Park at noon", completed_date: random_time, person_id: 2},
  { name: "sleep", description: "at night", completed_date: random_time, person_id: 2 },
  { name: "re-read notes", description: "rails, rails, rails", completed_date: random_time, person_id: 2 },
  { name: "get invited to dinner at ricky's or emily's", description: "food", completed_date: random_time, person_id: 2 },
  { name: "thanksgiving!", description: "Evan, Ohio, food", completed_date: random_time, person_id: 2 }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Jim", alt_name: "dad" },
  { name: "Sally", alt_name: "mom" },
  { name: "Elizabeth", alt_name: "sister" },
  { name: "Evan", alt_name: "hubs" }
]

people.each do |seed|
  Person.create(seed)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
