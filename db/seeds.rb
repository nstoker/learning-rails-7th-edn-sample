# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin_password = 'password'

User.create!(name: 'Admin User',
             email: 'neil@stoker.dev',
             password: admin_password,
             password_confirmation: admin_password,
             sample_user: false,
             admin: true)

password = 'password'

99.times do |n|
  User.create!(name: Faker::Name.name,
               email: "example-#{n+1}@railstutorial.org",
               password: password,
               password_confirmation: password,
               sample_user: true)
end
