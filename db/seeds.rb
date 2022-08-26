# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'Geraldo', email: 'geraldo@trashtv.com', password: "password")
user2 = User.create(name: 'Maury', email: 'maury@trashtv.com', password: "password")
user3 = User.create(name: 'Jenny', email: 'jenny@trashtv.com', password: "password")
