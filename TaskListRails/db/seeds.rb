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
  {name: "Homer Simpson", age: 39, occupation: "Nuclear Safety Technician"},
  {name: "Marge Simpson", age: 34, occupation: "Homemaker"},
  {name: "Bart Simpson", age: 10, occupation: "Student"},
  {name: "Lisa Simpson", age: 8, occupation: "Student"},
  {name: "Maggie Simpson", age: 1, occupation: "Baby"}
]
people.each do |person|
  Person.create person
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time },
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", completed_at: random_time },
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
  { name: "Plant Flowers", description: "", completed_at: random_time },
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
