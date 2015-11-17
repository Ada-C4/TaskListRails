def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
  { name: "Kelly"},
  { name: "Jessica"},
  { name: "Annalee"},
  { name: "Riley"}
]

people.each do |person|
  Person.create person
end

tasks = [
  { name: "The First Task", description: "", comp_date: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 1 },
  { name: "Go to Lunch", description: "", comp_date: random_time, person_id: 2 },
  { name: "Go to Second Lunch", description: "", person_id: 3 },
  { name: "Play Video Games", description: "", comp_date: random_time, person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "", comp_date: random_time, person_id: 1 },
  { name: "Plant Flowers", description: "", comp_date: random_time, person_id: 4 },
  { name: "Call Mom", description: "", person_id: 2 },
  { name: "She worries, you know.", description: "", person_id: 3 },
  { name: "Nap.", description: "", comp_date: random_time, person_id: 4 }
]

tasks.each do |task|
  Task.create task
end
