# def rand_date(30)
#   Time.at(rand * Time.now.to_i)
# end

def rand_date(days)
  rand(days).days.ago(Date.today)
end

tasks = [
  { name: "The First Task", description: "", completed_date: rand_date(30)},
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", completed_date: rand_date(30)},
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", completed_date: rand_date(30)},
  { name: "High Five Somebody You Don't Know", description: "", completed_date: rand_date(30)},
  { name: "Plant Flowers", description: "", completed_date: rand_date(30)},
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_date: rand_date(30)}
]

tasks.each do |task|
  Task.create task
end
