Gym.destroy_all
Booking.destroy_all
User.destroy_all
Order.destroy_all
Category.destroy_all

puts "Finished Cleaning"

puts "Creating Gyms"

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

puts "Finished Creating Gyms"

puts "Creating Categories"
Gym.all.each do |gym|
  Category.create!(name: "1-Time Pass", price: 15, gym: gym, number_of_visits: "1 Visit")
  Category.create!(name: "10-Times Pass", price: 25, gym: gym, number_of_visits: "10 Visits")
  Category.create!(name: "Unlimited One Month Pass", price: 115, gym: gym, number_of_visits: "Unlimited Visits")
end

puts "Finished Creating Categories"

puts "Creating users"

User.create!(
  email: "paul.naumov@yahoo.com" ,
  first_name: "Paul" ,
  last_name: "Naumov",
  password: 123456)

User.create!(
  email: "bnaumov@mail.com" ,
  first_name: "Boris" ,
  last_name: "Naumov",
  password: 123456)

User.create!(
  email: "nikfilimonov@mail.com" ,
  first_name: "Nik" ,
  last_name: "Filimonov",
  password: 123456)

  User.create!(
    email: "joanareis@mail.com" ,
    first_name: "Joana" ,
    last_name: "Reis",
    password: 123456)

    User.create!(
    email: "carlos.mendes@mail.com" ,
    first_name: "Carlos" ,
    last_name: "Mendes",
    password: 123456)


puts "Finished Creating Users"

puts "Done generating seeds!"