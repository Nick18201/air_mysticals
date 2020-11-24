# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "start seed with destroy"
Booking.destroy_all
Animal.destroy_all
User.destroy_all


puts "Create new users"

nicolas= User.new(
  username: 'nicolas',
  email: 'nicolas@test.com',
  password: 'secret'
)

file = File.open(Rails.root.join('db/fixtures/photos/users/nicolas.jpg'))
nicolas.avatar.attach(io: file, filename: 'nicolas.jpg', content_type: 'image/jpg')
nicolas.save!

diane = User.new(
  username: 'Diane',
  email: 'diane@test.com',
  password: 'secret'
)

file = File.open(Rails.root.join('db/fixtures/photos/users/diane.jpg'))
diane.avatar.attach(io: file, filename: 'diane.jpg', content_type: 'image/jpg')
diane.save!

julien = User.new(
  username: 'Julien',
  email: 'julien@test.com',
  password: 'secret'
)

file = File.open(Rails.root.join('db/fixtures/photos/users/julien.jpg'))
julien.avatar.attach(io: file, filename: 'julien.jpg', content_type: 'image/jpg')
julien.save!

nadia = User.new(
  username: 'Nadia',
  email: 'nadia@test.com',
  password: 'secret'
)

file = File.open(Rails.root.join('db/fixtures/photos/users/nadia.jpg'))
nadia.avatar.attach(io: file, filename: 'nadia.jpg', content_type: 'image/jpg')
nadia.save!

puts "create new animals"

# animal 1

diane_licorne = Animal.new(
  name: 'Unicorne',
  description: 'cheval avec une belle corne et une crinière pailletée',
  price_per_day: 120,
  age: 350,
  location: "place royale, 44000 nantes",
  owner: diane
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/licorne.jpg'))
diane_licorne.photo.attach(io: file, filename: 'licorne.jpg', content_type: 'image/jpg')
diane_licorne.save!

# animal 2
julien_dragon = Animal.new(
  name: 'Dracolosse',
  description: 'Dragon collossal avec de grandes ailes, qui crache du feu. Parfait pour vos barbecue!',
  price_per_day: 150,
  age: 1500,
  location: " 19 Quai François Mitterrand, 44200 nantes",
  owner: julien
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/dragon.jpg'))
julien_dragon.photo.attach(io: file, filename: 'dragon.jpg', content_type: 'image/jpg')
julien_dragon.save!

# animal 3

julien_choussins = Animal.new(
  name: 'Ginnette',
  description: 'Gentil chat qui fait pouet-pouet!',
  price_per_day: 30,
  age: 2,
  location: " 19 Quai François Mitterrand, 44200 nantes",
  owner: julien
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/choussins.jpg'))
julien_choussins.photo.attach(io: file, filename: 'choussins.jpg', content_type: 'image/jpg')
julien_choussins.save!

# animal 4

julien_paingours = Animal.new(
  name: 'Kinder',
  description: 'Un ours qui ne sait pas nager',
  price_per_day: 80,
  age: 12,
  location: " 19 Quai François Mitterrand, 44200 nantes",
  owner: julien
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/paingours.jpg'))
julien_paingours.photo.attach(io: file, filename: 'paingours.jpg', content_type: 'image/jpg')
julien_paingours.save!

# animal 5

julien_chours = Animal.new(
  name: 'Johnny',
  description: 'Une chouette qui sait bien chanter!',
  price_per_day: 200,
  age: 7,
  location: " 19 Quai François Mitterrand, 44200 nantes",
  owner: julien
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/chours.jpg'))
julien_chours.photo.attach(io: file, filename: 'chours.jpg', content_type: 'image/jpg')
julien_chours.save!

# animal 6

diane_renacureuil = Animal.new(
  name: 'Gerard',
  description: 'Petit écureuil espiègle',
  price_per_day: 65,
  age: 1,
  location: "place royale, 44000 nantes",
  owner: diane
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/renacureuil.jpg'))
diane_renacureuil.photo.attach(io: file, filename: 'renacureuil.jpg', content_type: 'image/jpg')
diane_renacureuil.save!

# animal 7

diane_cignomadaire = Animal.new(
  name: 'Hugo',
  description: 'Petit il était vilain , désormais il est splendide',
  price_per_day: 130,
  age: 26,
  location: "place royale, 44000 nantes",
  owner: diane
)

file = File.open(Rails.root.join('db/fixtures/photos/animals/cignomadaire.png'))
diane_cignomadaire.photo.attach(io: file, filename: 'cignomadaire.png', content_type: 'image/png')
diane_cignomadaire.save!

# animal 8

diane_chimcorbeau = Animal.new(
  name: 'Wizztiti',
  description: 'Très sympa mais un peu bruyant',
  price_per_day: 55,
  age: 15,
  location: "place royale, 44000 nantes",
  owner: diane
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chimcorbeau.jpg'))
diane_chimcorbeau.photo.attach(io: file, filename: 'chimcorbeau.jpg', content_type: 'image/jpg')
diane_chimcorbeau.save!

# animal 9

nadia_poulpoceros = Animal.new(
  name: 'Jade',
  description: 'Super pour les massages dans la piscine',
  price_per_day: 90,
  age: 65,
  location: "place graslin, 44000 nantes",
  owner: nadia
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/poulpoceros.jpg'))
nadia_poulpoceros.photo.attach(io: file, filename: 'poulpoceros.jpg', content_type: 'image/jpg')
nadia_poulpoceros.save!

# animal 10

nadia_poissouette = Animal.new(
  name: 'Dora',
  description: "Aussi à l'aise dans l'eau que dans l'air!",
  price_per_day: 35,
  age: 7,
  location: "place graslin, 44000 nantes",
  owner: nadia
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/poissouette.jpg'))
nadia_poissouette.photo.attach(io: file, filename: 'poissouette.jpg', content_type: 'image/jpg')
nadia_poissouette.save!

# animal 11

nadia_pouchien = Animal.new(
  name: 'Mimi',
  description: "Adorable , parfait en nugget!",
  price_per_day: 55,
  age: 5,
  location: "place graslin, 44000 nantes",
  owner: nadia
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/pouchien.jpg'))
nadia_pouchien.photo.attach(io: file, filename: 'pouchien.jpg', content_type: 'image/jpg')
nadia_pouchien.save!

# animal 12

nadia_chienard = Animal.new(
  name: 'Rex',
  description: "Très mignon, adore les caresses!",
  price_per_day: 68,
  age: 9,
  location: "place graslin, 44000 nantes",
  owner: nadia
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chienard.jpg'))
nadia_chienard.photo.attach(io: file, filename: 'chienard.jpg', content_type: 'image/jpg')
nadia_chienard.save!

# animal 13

nicolas_chemouette = Animal.new(
  name: 'Fred',
  description: "Peut faire le tour de la terre en 80 jours!",
  price_per_day: 120,
  age: 16,
  location: "Parc des Chantiers, Boulevard Léon Bureau, 44200 Nantes",
  owner: nicolas
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chemouette.jpg'))
nicolas_chemouette.photo.attach(io: file, filename: 'chemouette.jpg', content_type: 'image/jpg')
nicolas_chemouette.save!

# animal 14

nicolas_chemorse = Animal.new(
  name: 'Albert',
  description: "Le meilleur copain pour aller à la plage!",
  price_per_day: 85,
  age: 120,
  location: "Parc des Chantiers, Boulevard Léon Bureau, 44200 Nantes",
  owner: nicolas
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chemorse.jpg'))
nicolas_chemorse.photo.attach(io: file, filename: 'chemorse.jpg', content_type: 'image/jpg')
nicolas_chemorse.save!

# animal 15

nicolas_chiengoutan = Animal.new(
  name: 'Georges',
  description: "Docile et doux. Il adore grimper aux arbres!",
  price_per_day: 69,
  age: 38,
  location: "Parc des Chantiers, Boulevard Léon Bureau, 44200 Nantes",
  owner: nicolas
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chiengoutan.jpg'))
nicolas_chiengoutan.photo.attach(io: file, filename: 'chiengoutan.jpg', content_type: 'image/jpg')
nicolas_chiengoutan.save!

# animal 16

nicolas_chapillon = Animal.new(
  name: 'Lou',
  description: "Vient de sortir de sa chrysalide!",
  price_per_day: 36,
  age: 1,
  location: "Parc des Chantiers, Boulevard Léon Bureau, 44200 Nantes",
  owner: nicolas
)


file = File.open(Rails.root.join('db/fixtures/photos/animals/chapillon.jpg'))
nicolas_chapillon.photo.attach(io: file, filename: 'chapillon.jpg', content_type: 'image/jpg')
nicolas_chapillon.save!





puts "Create bookings"

# Booking

Booking.create!(
  renter: julien,
  animal: diane_licorne,
  status: "accepted",
  beginning_date: "2020-09-25",
  ending_date: "2020-09-27",
  total_price: 360
)

Booking.create!(
  renter: julien,
  animal: nadia_pouchien,
  status: "accepted",
  beginning_date: "2020-07-30",
  ending_date: "2020-07-31",
  total_price: 110
)

# Réservation

Booking.create!(
  renter: diane,
  animal: nadia_chienard,
  status: "accepted",
  beginning_date: "2020-10-25",
  ending_date: "2020-10-26",
  total_price: 136
)

Booking.create!(
  renter: nicolas,
  animal: nadia_poissouette,
  status: "accepted",
  beginning_date: "2020-08-28",
  ending_date: "2020-08-30",
  total_price: 115
)

Booking.create!(
  renter: nicolas,
  animal: nadia_poulpoceros,
  status: "pending",
  beginning_date: "2020-12-28",
  ending_date: "2020-12-30",
  total_price: 270
)




puts "end of seed"
