people = [
  { name: "Ricky", fav_color: "green" },
  { name: "Fred", fav_color: "rainbow"},
  {name: "Alyssa", fav_color: "red"},
  {name: "Brittany", fav_color: "black"},
]

people.each do |person|
  Task.create person
end
