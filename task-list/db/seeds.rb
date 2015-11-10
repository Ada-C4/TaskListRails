# def rand_date
#   Time.at(rand * Time.now.to_i)
# end

def rand_date(days)
  rand(days).days.ago(Date.today)
end

tasks = [
  { name: "The First Task", description: "", completed_date: rand_date },
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", completed_date: rand_date },
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", completed_date: rand_date },
  { name: "High Five Somebody You Don't Know", description: "", completed_date: rand_date },
  { name: "Plant Flowers", description: "", completed_date: rand_date },
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_date: rand_date }
]

tasks.each do |task|
  Task.create task
end
