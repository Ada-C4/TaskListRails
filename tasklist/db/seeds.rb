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
  { name: "The First Task", descript: "do this first", date_completed: random_time },
  { name: "Go to Brunch", descript: "go to Cafe Presse" },
  { name: "Go to Lunch", descript: "eat", date_completed: random_time },
  { name: "Go to Second Lunch", descript: "eat more" },
  { name: "Play Video Games", descript: "Super Mario", date_completed: random_time },
  { name: "High Five Somebody You Don't Know", description: "Everyone", date_completed: random_time },
  { name: "Plant Flowers", descript: "Magnolias!", date_completed: random_time },
  { name: "Call Mom", descript: "Hi MOM" },
  { name: "She worries, you know.", descript: "Yup" },
  { name: "Nap.", descript: "", date_completed: random_time }
]

tasks.each do |task|
  Task.create(task)
end
