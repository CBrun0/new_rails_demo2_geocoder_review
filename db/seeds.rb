# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Cleaning database...'
Flat.destroy_all
User.destroy_all
Booking.destroy_all
p 'Cleaned!'

p 'Creating users...'
User.create(email: "test@test.com", password: "123456")
p 'Users created!'

p 'Creating flats...'
Flat.create(name: 'La cabane enchanté', address: '18 av de la grande armée Paris', description: 'Perchez vous
  ce weekend en toute légalité ! Découvrez le 7ème ciel', price: 200,
  image: "https://images.unsplash.com/photo-1490197415175-074fd86b1fcc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGhvdXNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
Flat.create(name: 'Le chateau de Louis XVI', address: '12 rue lesueur Paris', description: 'Un trés beau château
  de plus de 1000m2 de surfaces habitables.', price: 300,
  image: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Flat.create(name: 'La résidence de la paix', address: '14 rue de la paix Paris', description: 'Une résidence
  calme et pésible, trés bien pour un jeune couple', price: 100,
  image: "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aG91c2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
p 'Flats created!'
