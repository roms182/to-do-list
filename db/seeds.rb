# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.delete_all

Task.create(order: 1, title: 'Garage Peugeot', time: 1, timer: 1)
Task.create(order: 2, title: 'Module C: peinture', time: 1, timer: 2)
Task.create(order: 3, title: 'Module C: assemblage & bande', time: 2, timer: 3)
Task.create(order: 4, title: 'Module A & B : bande & assemblage', time: 2, timer: 7)
Task.create(order: 5, title: 'Module A & B : ponçage', time: 1, timer: 9)



