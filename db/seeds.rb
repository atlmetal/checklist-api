# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
  tittle = Faker::Creature::Dog.name
  created_by = Faker::Name.unique.name
  Checklist.create(tittle: tittle, created_by: created_by)
end
