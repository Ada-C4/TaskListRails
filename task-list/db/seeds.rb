def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "Eat Lunch", description: "grilled cheese. Butter bread this time", completed: false, completed_date: random_time },
  { name: "Hike", description: "Discovery Park at noon", completed: true, completed_date: random_time},
  { name: "sleep", description: "at night", completed: true, completed_date: random_time },
  { name: "re-read notes", description: "rails, rails, rails", completed: false, completed_date: random_time },
  { name: "get invited to dinner at ricky's or emily's", description: "food", completed: false, completed_date: random_time },
  { name: "thanksgiving!", description: "Evan, Ohio, food", completed: false, completed_date: random_time }
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
