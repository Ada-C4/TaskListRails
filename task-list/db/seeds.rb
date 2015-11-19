# def rand_date(30)
#   Time.at(rand * Time.now.to_i)
# end

def rand_date(days)
  rand(days).days.ago(Date.today)
end

people = [
  { name: "Jones", job_title: "Senior Editor"},
  { name: "Halpert", job_title: "Personal Assistant"},
  { name: "Zeek", job_title: "Eater of meals"},
  { name: "Hattie", job_title: "Best Boy Grip" }
]

people.each do |seed|
  Person.create(seed)
end


tasks = [
  { name: "The First Task", description: "", completed_date: rand_date(30), person_id: 1},
  { name: "Go to Brunch", description: "", person_id: 2 },
  { name: "Go to Lunch", description: "", completed_date: rand_date(30), person_id: 1},
  { name: "Go to Second Lunch", description: "", person_id: 4 },
  { name: "Play Video Games", description: "", completed_date: rand_date(30), person_id: 1},
  { name: "High Five Somebody You Don't Know", description: "", completed_date: rand_date(30), person_id: 3},
  { name: "Plant Flowers", description: "", completed_date: rand_date(30), person_id: 2},
  { name: "Call Mom", description: "", person_id: 1 },
  { name: "She worries, you know.", description: "", person_id: 4 },
  { name: "Nap.", description: "", completed_date: rand_date(30), person_id: 1}
]

tasks.each do |task|
  Task.create task
end
