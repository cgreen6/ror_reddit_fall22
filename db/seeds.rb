Sub.delete_all

Sub.create(title: 'Food')
Sub.create(title: 'Travel')
Sub.create(title: 'Tech')

5.times do 
  Sub.create(
    title: Faker::Games::SuperMario.character
  )
end


#we need to reset before we create
#seed file is for populating the db. 
#faker helps out with giving fake data.
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
