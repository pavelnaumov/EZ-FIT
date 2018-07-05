Gym.destroy_all
Booking.destroy_all

puts "Finished Cleaning"

Gym.create!(
  name: "Fitness Hut",
  description: "Standard gym",
  address: "Rua Viriato, 402 Picoas Plaza, Lisbon, Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name:"Pump República",
  description: "Standard gym",
  address: "Avenida da República 52-B 1050-196 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Envy",
  description: "Premium gym",
  address: "Rua do Carmo, 29 1200-093 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Holmes Place",
  description: "Premium Gym",
  address: "Av. Fontes Pereira de Melo, 16 1025-121 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Work It 24 Hours",
  description: "Basic Gym",
  address: "Av. Almirante Reis, 172 1000-053 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Lisboa Wellness Center",
  description: "Standard-Premium Gym",
  address: "Avenida General Norton de Matos Estádio Sport Lisboa e Benfica 1500-313 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Palácio dos Távora",
  description: "Standard gym, good quality",
  address: "Travessa da Nazaré, 21 1100-368 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Academia Life Club",
  description: "Standard gym, good quality",
  address: "Rua da Cintura do Porto a Santos, Armazém J 1200-109 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

Gym.create!(
  name: "Power Plate Portugal",
  description: "Standard-Premium Gym",
  address: "Rua Sampaio e Pina nº 64 A 1070-250 Lisbon Portugal",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5
  )

  Gym.all.each do |gym|
    Category.create(name: "1-Day Subscription", price: 15, gym: gym, number_of_days: 1)
    Category.create(name: "10-Day Subscription", price: 25, gym: gym, number_of_days: 10)
    Category.create(name: "30-Day Subscription", price: 115, gym: gym, number_of_days: 30)
  end

puts "Done generating seeds!"