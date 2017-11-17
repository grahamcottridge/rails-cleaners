# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.delete_all
Booking.delete_all
User.delete_all
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
  "Travessa de S. Plácido 50A lisbon",
  "Av. Da Liberdade 127 lisbon",
  "Largo de São Carlos 10 lisbon",
  "Rua dos Prazeres 52 lisbon",
  "Av. Almirante Reis 1 lisbon",
  "R. Trinas 129 lisbon",
  "R. Paz 80 lisbon",
  "Largo da Trindade 9 lisbon",
  "R. do Teixeira 35 lisbon",
  "R. Telhal 75 lisbon",
  "R. Dom Pedro V 129 lisbon",
  "Rua da Prata 52 lisbon",
  "Calçada Santana 41 lisbon",
  "Tv. Do Convento das Bernardas 12 lisbon",
  "Rua do Loreto 21 lisbon",
  "R. das Portas de Santo Antão 23 lisbon",
  "R. Mal. Saldanha 1 lisbon",
  "R. da Palmeira 15 lisbon",
  "Rua do Salitre 117 lisbon",
  "Largo da Academia Nacional de Belas Artes 18-20 lisbon",
  "R. da Palmeira 15 lisbon",
  "Tv. Do Convento das Bernardas 12",
  "Tv. De Santo Antão 11 lisbon",
  "R. Duques de Bragança 7 lisbon",
  "Rua da Glória 43 lisbon",
  "Praça dos Restauradores 79 lisbon",
  "R. do Norte 17 lisbon",
  "R. da Misericórdia 37 lisbon",
  "1150, R. São José 182 lisbon",
  "R. de São Pedro Mártir 23 lisbon",
  "R. São Pedro de Alcântara 81 lisbon",
  "Av. Da Liberdade 185 lisbon",
  "R. de São Lourenço 5 lisbon",
  "R. Guia 9 lisbon",
  "Calçada do Duque 31B lisbon",
  "Largo da Graça 95-96 lisbon",
  "Largo do Carmo 10 lisbon",
  "Rua da Betesga 3 lisbon",
  "Rua da Alegria 23 lisbon",
  "Rua da Boavista 16 lisbon",
]

cleaner_pictures = [
  "https://images.locanto.com.au/2435939244/I-am-looking-for-a-cleaner-start-ASAP_1.png",
  "https://www.rentcafe.com/blog/wp-content/uploads/2012/06/Fotolia_30109629_Subscription_XXL.jpg",
  "http://www.cleaningservicethevillages.com/wp-content/uploads/about.png",
  "https://www.thetidymaids.com/wp-content/uploads/2015/05/triangle-maid-service.jpg",
  "http://domesticcleaning.org/wp-content/uploads/2014/10/professional-cleaner.jpg",
  "http://www.callcleaners.co.uk/wp-content/uploads/2013/08/cleaners6-228x300.jpg",
  "https://previews.123rf.com/images/ljupco/ljupco1303/ljupco130300191/18348480-Male-cleaner-holding-a-hover-and-posing-with-cleaning-supplies-isolated-on-white-background-Stock-Photo.jpg",
  "https://y31uv4ra1.vo.llnwd.net/content/images/sys/website/systweaknewimages/disk_cleaner.jpg",
  "https://thumbs.dreamstime.com/b/male-cleaner-holding-bucket-cleaning-supplies-looking-camera-isolated-white-background-30781732.jpg",
  "http://gleamingdomesticcleaningservices.co.uk/wp-content/uploads/2013/05/Cleaner-Lady-with-bucket-and-cleaners1.jpg",
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

address_cleaner.each do |address|
  new_cleaner = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456",
    address: address, #address_cleaner.shuffle!.pop,
    role_cleaner: true,
    hourly_rate: rand(10..15)
    )
  #new_cleaner.photo_url = cleaner_pictures.shuffle!.pop
  #new_cleaner.send(:photo_url=, cleaner_pictures.shuffle!.pop, folder: Rails.env.to_s, use_filename: true, image_metadata: true)
  new_cleaner.save
end  












