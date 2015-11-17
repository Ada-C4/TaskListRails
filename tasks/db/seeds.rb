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
  {name: "Draco", photo: "http://www.mdvstyle.com/wp-content/uploads/2015/07/una-foto-promo-di-draco-malfoy-tom-felton-per-il-film-harry-potter-e-la-pietra-filosofale-129105.jpg" , bio: "A Slytherin sometimes mistaken for Kim Kardashian"},
  {name: "Fred", photo: "http://sp5.fotolog.com/photo/37/49/110/phelpsaholics/1286321715330_f.jpg" , bio: "A gingery twin who is currently dead"},
  {name: "George", photo: "http://vignette4.wikia.nocookie.net/harrypotter/images/f/f5/PHELPS2.jpg/revision/latest/scale-to-width-down/250?cb=20150828154311", bio: "A gingery twin who is currently alive"},
  {name: "Hermione", photo: "https://upload.wikimedia.org/wikipedia/en/d/d3/Hermione_Granger_poster.jpg", bio: "A very logical Gryffindor who is smarter than Harry"}
]

people.each do |person|
  Person.create person
end

tasks = [
  { name: "The First Task", description: "It's here!", complete: random_time, person_id: 2 },
  { name: "Go to Brunch", description: "The best meal of the day", person_id: 4 },
  { name: "Go to Lunch", description: "Another good meal", complete: random_time, person_id: 2 },
  { name: "Go to Second Lunch", description: "Still a good meal choice", person_id: 1 },
  { name: "Play Video Games", description: "Preferably Mario 64", complete: random_time, person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "This could be cool", complete: random_time, person_id: 4 },
  { name: "Plant Flowers", description: "This requires going outside", complete: random_time, person_id: 1 },
  { name: "Call Mom", description: "She'd like to hear from you", person_id: 4 },
  { name: "She worries, you know.", description: "Worry worry worry", person_id: 3 },
  { name: "Nap.", description: "not too long!", complete: random_time, person_id: 1 }
]

tasks.each do |task|
  Task.create task
end
