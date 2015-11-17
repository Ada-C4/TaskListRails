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
  {name: "Annalee"},
  {name: "Imari"},
  {name: "Davin"},
  {name: "Jaxson"}
]

people.each do |person|
  Person.create(person)
end

tasks = [
  { name: "The First Task", descript: "do this first", date_completed: random_time, person_id: 1 },
  { name: "Go to Brunch", descript: "go to Cafe Presse", person_id: 2 },
  { name: "Go to Lunch", descript: "eat", date_completed: random_time, person_id: 3 },
  { name: "Go to Second Lunch", descript: "eat more", person_id: 4 },
  { name: "Play Video Games", descript: "Super Mario", date_completed: random_time, person_id: 1 },
  { name: "High Five Somebody You Don't Know", descript: "Everyone", date_completed: random_time, person_id: 2 },
  { name: "Plant Flowers", descript: "Magnolias!", date_completed: random_time, person_id: 3 },
  { name: "Call Mom", descript: "Hi MOM", person_id: 4 },
  { name: "She worries, you know.", descript: "Yup", person_id: 1 },
  { name: "Nap", descript: "ZZZZZZZZ", date_completed: random_time, person_id: 2 }
]

tasks.each do |task|
  Task.create(task)
end
