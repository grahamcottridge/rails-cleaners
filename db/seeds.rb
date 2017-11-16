# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

address_client = [
  "R. Cais de Santarém 36 lisbon", 
  "Largo São Sebastião da Pedreira 31 lisbon", 
  "Av. Sidónio Pais 16 lisbon",
  "R. António Pedro 1 lisbon",
  "Av. Alm. Reis 238 lisbon",
  "Rua Coelho da Rocha 69 lisbon",
  "Av. António Augusto de Aguiar 58 lisbon",
  "Rua das Portas de Santo Antão 27 lisbon",
  "Av. Duque de Loulé 1 lisbon",
  "Avenida 5 de Outubro 70 lisbon",
  "Rua José Estêvão 47 lisbon",
  "Rua do Salitre 185 lisbon",
  "R. Anchieta 5 lisbon",
  "Avenida Berna 35 lisbon",
  "Av. Miguel Bombarda 145 lisbon",
  ]

  address_cleaner = [

  "R. Rodrigo da Fonseca 82A lisbon",
  "Rua de Xabregas 20 lisbon",
  "Praça Ilha do Faial 13 lisbon",
  "R. Nova de São Mamede 56 lisbon",
  "Av. Alm. Reis 65 lisbon",
  "Travessa de S. Plácido 50A lisbon"
]

customers = []
6.times do 
  new_user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    address: address_client.shuffle!.pop,
    )
  new_user.save
  customers << new_user

end  

3.times do 
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "dhasdjhahdasjhd",
    address: address_cleaner.shuffle!.pop,
    role_cleaner: true
    )
end  



bookings = [

]
customers.each do |customer|
  Booking.create( 
    date: Faker::Date.forward(14),
    address: address_client.shuffle!.pop,
    customer_id: customer.id,
    cleaner_id: rand(1..3),
  )
end









