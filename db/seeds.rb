# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
MenuItem.create([
    { name: "Big Mac", price: 5.99 },
    { name: "Quarter Pounder", price: 6.99 },
    { name: "McChicken", price: 4.99 },
    { name: "Filet-O-Fish", price: 5.99 },
    { name: "McNuggets", price: 4.99 }
  ])