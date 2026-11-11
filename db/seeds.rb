# Clear existing data
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants_attributes = [
  {
    name: "Epicure",
    address: "75 Rue du Faubourg Saint-Honoré, 75008 Paris",
    phone_number: "01 53 43 43 40",
    category: "french"
  },
  {
    name: "Dishoom",
    address: "7 Boundary St, London E2 7JE",
    phone_number: "020 7420 9320",
    category: "chinese"
  },
  {
    name: "Pizza East",
    address: "56A Shoreditch High St, London E1 6JJ",
    phone_number: "020 7729 1888",
    category: "italian"
  },
  {
    name: "Sushi Samba",
    address: "110 Bishopsgate, London EC2N 4AY",
    phone_number: "020 3640 7330",
    category: "japanese"
  },
  {
    name: "Chez Léon",
    address: "18 Rue des Bouchers, 1000 Bruxelles",
    phone_number: "02 511 14 15",
    category: "belgian"
  }
]

restaurants_attributes.each do |attrs|
  restaurant = Restaurant.create!(attrs)
  puts "Created #{restaurant.name}"
end

puts "Done! Created #{Restaurant.count} restaurants."
