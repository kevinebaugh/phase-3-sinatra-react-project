puts "🌱 Seeding spices..."

Dog.create(name: "Rawley")
puts "Dog created"

Waterbowl.create(
  label: "La Festa",
  latitude: "43.1941631",
  longitude: "-70.8770038"
)
puts "Waterbowl created"

WaterbowlVisit.create(
  dog_id: Dog.first.id,
  waterbowl_id: Waterbowl.first.id,
  comment: "Refreshing!"
)
puts "WaterbowlVisit created"

puts "✅ Done seeding!"
