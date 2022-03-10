puts "🌱 Seeding spices..."

Dog.create(name: "Rawley")
Dog.create(name: "Carna")
Dog.create(name: "Mico")
puts "Dogs created"

Waterbowl.create(
  label: "La Festa",
  latitude: "43.1941631",
  longitude: "-70.8770038"
)
Waterbowl.create(
  label: "Fat Dog Kitchen",
  latitude: "43.1983372",
  longitude: "-70.8771887"
)
Waterbowl.create(
  label: "Bubby's Bagel & Deli",
  latitude: "43.1983372",
  longitude: "-70.8771887"
)
puts "Waterbowls created"

100.times do
  WaterbowlVisit.create(
    dog_id: Dog.all.sample.id,
    waterbowl_id: Waterbowl.all.sample.id,
    comment: ["Refreshing!", "Yum!", "I was thirsty!", "Woof!", "Delicious!"].sample
  )
end
puts "WaterbowlVisits created"

puts "✅ Done seeding!"
