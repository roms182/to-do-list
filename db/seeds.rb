# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all

Task.create(order: 1, title: 'Garage Peugeot', time: 1, timer: 1, color: '')
Task.create(order: 2, title: 'Déjeuner Nico', time: 2, timer: 2, color: '')
Task.create(order: 3, title: 'Castorama', time: 2, timer: 4, color: 'red')
Task.create(order: 4, title: 'Trouver Echelle', time: 1, timer: 6, color: '')
Task.create(order: 5, title: 'Jogging', time: 1, timer: 7, color: '')



