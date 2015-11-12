def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "", complete: "false", completed_at: random_time },
  { name: "Go to Brunch", description: "", complete: "false"},
  { name: "Go to Lunch", description: "", complete: "false", completed_at: random_time },
  { name: "Go to Second Lunch", description: "", complete: "false"},
  { name: "Play Video Games", description: "", complete: "false", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", complete: "false", description: "", completed_at: random_time },
  { name: "Plant Flowers", description: "", complete: "false", completed_at: random_time },
  { name: "Call Mom", description: "", complete: "false"},
  { name: "She worries, you know.", description: "", complete: "false"},
  { name: "Nap.", description: "", complete: "false", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
