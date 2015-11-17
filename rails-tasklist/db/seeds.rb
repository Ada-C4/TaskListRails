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
  { name: "The First Task", description: "ta-da", completed_at: random_time, person_id: 2 },
  { name: "Save England", description: "with yo powers", person_id: 2 },
  { name: "Go to Lunch", description: "still hungry", completed_at: random_time, person_id: 5 },
  { name: "Go to Second Lunch", description: "Hobbits!", person_id: 3 },
  { name: "Solve Crimes", description: "find them clues", completed_at: random_time, person_id: 4 },
  { name: "Rob the crown jewels", description: "duh", completed_at: random_time, person_id: 5 },
  { name: "Riddle me", description: "this", completed_at: random_time, person_id: 1 },
  { name: "Protect the Queen", description: "God save!", person_id: 2 },
  { name: "Compose some waltzes", description: "da-da-da-", person_id: 4 },
  { name: "Nap.", description: "zzzzzz", completed_at: random_time, person_id: 3 }
]

people = [
  {name: "Irene Adler", photo: "https://media.giphy.com/media/M3y9Ouxs8Y1zy/giphy.gif" },
  {name: "Mycroft Holmes", photo: "https://media.giphy.com/media/gHzFOS60y62v6/giphy.gif" },
  {name: "John Watson", photo: "https://media.giphy.com/media/YX2nszi4twRbO/giphy.gif"},
  {name: "Sherlock Holmes", photo: "https://media.giphy.com/media/MtsKydwXTY0q4/giphy.gif"},
  {name: "Moriarty", photo: "http://33.media.tumblr.com/tumblr_lxk4fbQ6eb1qeyqjwo1_500.gif"},
  {name: "Mrs. Hudson", photo: "https://media.giphy.com/media/SL1POQnCQo7Ti/giphy.gif"}
]

people.each do |person|
  Person.create(person)
end

tasks.each do |task|
  Task.create task
end
