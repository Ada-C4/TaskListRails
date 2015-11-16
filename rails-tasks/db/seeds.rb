# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_tasks = [
  {name: "groceries", description: "bread, jam", complete: true, person_id: 2},
  {name: "feed the dog", complete: true, person_id: 1},
  {name: "vaccum", description: "first-floor", complete: false, person_id: 3}
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
