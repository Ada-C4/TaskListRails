tasks = [
  { name: "Eat Lunch", description: "grilled cheese. Butter bread this time", completed: false },
  { name: "Hike", description: "Discovery Park at noon", completed: false },
  { name: "sleep", description: "at night", completed: false },
  { name: "re-read notes", description: "rails, rails, rails", completed: false },
  { name: "get invited to dinner at ricky's or emily's", description: "food", completed: false },
  { name: "thanksgiving!", description: "Evan, Ohio, food", completed: false }
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
