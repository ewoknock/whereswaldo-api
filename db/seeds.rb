# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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