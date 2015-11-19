def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
	{name: 'Riley', bio: 'Likes glitter and knitting'},
	{name: 'Desmond', bio: 'Runs with scissors'},
	{name: 'Morty', bio: 'getting there'},
	{name: 'Rick', bio:'Genius. Drunk.'}
]

tasks = [
  { name: "The First Task", description: "", completed_at: random_time },
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", completed_at: random_time },
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 4 },
  { name: "Call Mom", description: "", person_id: 3 },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 1 }
]

tasks.each do |task|
  Task.create task
end

people.each do |person|
	Person.create person
end
