# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_tasks = [
  {name: "bring boyfriend home", description: "dinner with the fam", complete: true, person_id: 2},
  {name: "xmas shopping", description: "at target!", complete: nil, person_id: 2},
  {name: "feed the dog", complete: true, person_id: 1},
  {name: "learn rails", complete: true, person_id: 1},
  {name: "get cnc machine running", description: "computer problems", complete: true, person_id: 3},
  {name: "make longboards", description: "tons and tons", complete: nil, person_id: 3}
]

seed_tasks.each do |task|
  Task.create(task)
end


seed_person = [
  {name: "Lauren"},
  {name: "Hannah"},
  {name: "Bradley"}
]

seed_person.each do |seed|
  Person.create(seed)
end
