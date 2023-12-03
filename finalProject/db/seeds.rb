# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin = User.create(email: "joseph.1@osu.edu", password: "password", password_confirmation: "password", role:1, first_name: "bob", last_name: "joseph")
presentation = Presention.create(title: "My Presentation", description: "This is my presentation", user_id: 1) 
