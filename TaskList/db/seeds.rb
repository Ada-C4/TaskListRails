# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tasks = Task.create([{name:'write a blog post', description: 'make it about something cool'}, {name:'build a rad rails app', description:'to add to your portfolio'}, {name:'go for a run', description:'try to make it at least two miles'}])
