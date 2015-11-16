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

people = [
  { name: "Jenna", tag_line: "Ada Dev Student" },
  { name: "Eric", tag_line: "UT pythonista" },
  { name: "Mallory", tag_line: "Amazonian" },
  { name: "Ross", tag_line: "Microsoftie" }
]

people.each do |person|
  Person.create(person)
end

def random_person
  rand(1..4)
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, person_id: random_person },
  { name: "Go to Brunch", description: "", person_id: random_person },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: random_person },
  { name: "Go to Second Lunch", description: "", person_id: random_person },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: random_person },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: random_person },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: random_person },
  { name: "Call Mom", description: "", person_id: random_person },
  { name: "She worries, you know.", description: "", person_id: random_person },
  { name: "Nap.", description: "", completed_at: random_time, person_id: random_person }
]

tasks.each do |task|
  Task.create task
end
