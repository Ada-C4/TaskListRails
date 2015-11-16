def random_time
  Time.at(rand * Time.now.to_i)
end

seed_person = [
  {name: "Tammy", city: "Seattle", favorite_color: "purple"},
  {name: "Daniella", city: "Tel Aviv", favorite_color: "deep blue"},
  {name: "Itai", city: "Tel Aviv", favorite_color: "green"},
  {name: "Jackie", city: "Ramat Gan", favorite_color: "metal"},
  {name: "Michelle", city: "Hod Hasharon", favorite_color: "baby-pink"}
]

seed_person.each do |seed|
  Person.create(seed)
end


tasks = [
  { name: "The First Task", description: "", completed_at:random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 3},
  { name: "Go to Lunch", description: "", completed_at:random_time, person_id: 2 },
  { name: "Go to Second Lunch", description: "", person_id: 5 },
  { name: "Play Video Games", description: "", completed_at:random_time, person_id: 4 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at:random_time, person_id: 2 },
  { name: "Plant Flowers", description: "", completed_at:random_time, person_id: 4 },
  { name: "Call Mom", description: "", person_id: 1 },
  { name: "She worries, you know.", description: "", person_id: 3 },
  { name: "Nap.", description: "", completed_at:random_time, person_id: 4 }
]

tasks.each do |task|
  Task.create task
end
