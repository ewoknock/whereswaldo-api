# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Score.destroy_all

sampleScores = [
  {name: "Marina", time:17650}, 
  {name: "Cheng", time: 25000}, 
  {name: "Emma", time: 49090},
  {name: "Sonja", time:55100}, 
  {name: "Oskar", time: 57600}, 
  {name: "Charity", time: 60300},
  {name: "Kurt", time:72000}, 
  {name: "Frasier", time: 78600}, 
  {name: "Chester", time: 85900},
  {name: "Sunny", time: 90900},
  ]

sampleScores.each do |sample|
  Score.create!(sample)
end

characters = [
  {name: "Washington Carver", x:0.0797, y:0.6545}, 
  {name: "Curie", x:0.3016, y:0.7684}, 
  {name: "Einstein", x:0.1411, y:0.3976}, 
  {name: "Newton", x:0.9141, y:0.8851}, 
  {name: "Ride", x:0.5839, y:0.3552}
]

Character.delete_all

characters.each do |character|
  Character.create(character)
end