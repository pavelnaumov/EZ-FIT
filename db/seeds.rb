Gym.destroy_all
Booking.destroy_all

puts "Finished Cleaning"

Gym.create!(
  name: "Fitness Hut",
  description: "Standard gym",
  address: "Rua Viriato 402 Picoas Plaza, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name:"Pump República",
  description: "Standard gym",
  address: "Avenida da República 52-B, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Envy",
  description: "Premium gym",
  address: "Rua do Carmo 29, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Holmes Place",
  description: "Premium Gym",
  address: "Av. Fontes Pereira de Melo, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Work It 24 Hours",
  description: "Basic Gym",
  address: "Av. Almirante Reis 172, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Lisboa Wellness Center",
  description: "Standard-Premium Gym",
  address: "Avenida General Norton de Matos Estádio Sport Lisboa e Benfica, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Palácio dos Távora",
  description: "Standard gym, good quality",
  address: "Travessa da Nazaré 21, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Academia Life Club",
  description: "Standard gym, good quality",
  address: "Rua da Cintura do Porto a Santos, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

Gym.create!(
  name: "Power Plate Portugal",
  description: "Standard-Premium Gym",
  address: "Rua Sampaio e Pina nº 64 A, Lisbon",
  facilities: "Very good selection of free weights and machines. New equipment",
  rating: 4.5,
  photo:"https://www.washingtonian.com/wp-content/uploads/2017/06/6-30-17-equinox-one-hill-south-apartments-navy-yard-dc-lede-994x559.jpg"
  )

  Gym.all.each do |gym|
    Category.create!(name: "1-Time Pass", price: 15, gym: gym, number_of_visits: "1 Visit")
    Category.create!(name: "10-Times Pass", price: 25, gym: gym, number_of_visits: "10 Visits")
    Category.create!(name: "Unlimited One Month Pass", price: 115, gym: gym, number_of_visits: "Unlimited Visits")
  end


puts "Done generating seeds!"