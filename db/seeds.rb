# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
password = ENV.fetch('SAMPLE_PASSWORD',OpenSSL::Random.random_bytes(20).unpack('M*').join)
User.create!(name: 'Example User',
             email: 'example@railstutorial.org',
             password: password,
             password_confirmation: password,
             sample_user: true)

99.times do |n|
  User.create!(name: Faker::Name.name,
               email: "example-#{n+1}@railstutorial.org",
               password: password,
               password_confirmation: password,
               sample_user: true)
end
