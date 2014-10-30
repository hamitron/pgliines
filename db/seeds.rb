# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Hamilton Karl",
             email: "hqkarl@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)

#faker gem to create profiles

15.times do |n|
  name  = Faker::Name.name
  email = "User#{n+1}@twiines.com"
  password = "password"
  User.create!(
  	name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    )
end



