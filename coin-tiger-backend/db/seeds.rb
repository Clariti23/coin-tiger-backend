# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Grant Ferowich", email:"gfero@gmail.com", password: "gfero" )

favorite1 = Favorite.create(symbol:"btc", user: user1)
favorite2 = Favorite.create(symbol:"eth", user: user1)
# favorite3 = Favorite.create(apiId: "kyber-network", name: "Kyber Network", symbol:"knc", user: user1)
# favorite4 = Favorite.create(apiId: "kyber-network", name: "Kyber Network", symbol:"knc", user: user1)

basket1 = Basket.create(name: "2020MAJORS", initialBasketValue: 10000, indexDate: "01-01-2020", coinOne: "bitcoin", coinTwo: "ethereum", coinThree: "", coinFour: "", coinFive: "", coinSix: "", user: user1)
