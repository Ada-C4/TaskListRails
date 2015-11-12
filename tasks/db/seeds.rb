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
  { name: "The First Task", description: "It's here!", complete: random_time },
  { name: "Go to Brunch", description: "The best meal of the day" },
  { name: "Go to Lunch", description: "Another good meal", complete: random_time },
  { name: "Go to Second Lunch", description: "Still a good meal choice" },
  { name: "Play Video Games", description: "Preferably Mario 64", complete: random_time },
  { name: "High Five Somebody You Don't Know", description: "This could be cool", complete: random_time },
  { name: "Plant Flowers", description: "This requires going outside", complete: random_time },
  { name: "Call Mom", description: "She'd like to hear from you" },
  { name: "She worries, you know.", description: "Worry worry worry" },
  { name: "Nap.", description: "not too long!", complete: random_time }
]

tasks.each do |task|
  Task.create task
end
