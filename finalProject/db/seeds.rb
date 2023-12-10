# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
admin = User.new(first_name: 'admin', last_name: 'admin', email: 'admin@example.com', role: 1, password: 'password', password_confirmation: 'password', admin: true)
admin.save!
