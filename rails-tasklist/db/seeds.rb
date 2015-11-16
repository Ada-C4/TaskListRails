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
  {name: "Irene Adler", photo: "http://images5.fanpop.com/image/photos/30800000/Sherlock-sherlock-on-bbc-one-30801762-500-667.jpg" },
  {name: "Mycroft Holmes", photo: "http://img3.wikia.nocookie.net/__cb20130218233027/bakerstreet/images/thumb/0/07/Mark-gatiss.jpg/500px-Mark-gatiss.jpg" },
  {name: "John Watson", photo: "http://images6.fanpop.com/image/photos/36500000/Dr-John-Watson-Sherlock-BBC-One-image-dr-john-watson-sherlock-bbc-one-36513680-500-300.png"},
  {name: "Sherlock Holmes", photo: "https://lifebeinggirly.files.wordpress.com/2014/01/sherlock-holmes-bbc.jpg"},
  {name: "Moriarty", photo: "http://33.media.tumblr.com/tumblr_lxk4fbQ6eb1qeyqjwo1_500.gif"}
]

people.each do |person|
  Person.create(person)
end

tasks.each do |task|
  Task.create task
end
