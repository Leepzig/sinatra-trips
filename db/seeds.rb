puts "🌱 Seeding spices..."

User.create({username:"traveladdict", name:"Beth"})
Trip.create({title:"New Orleans", location:"New Orleans", trip_length:4, user_id:1})
Trip.create({title:"Beach Time!", location:"Colombia", trip_length:7, user_id:1})
Trip.create({title:"Visiting Son", location:"New York", trip_length:4, user_id:1})

puts "✅ Done seeding!"
