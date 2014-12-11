# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  { admin: true,
    password: "12345678",
    password_confirmation: "12345678",
    email: "admin@example.com",
    first_name: "Admin",
    last_name: "Guy",
    dob: "01/01/2000",
    phone: "312.123.4567",
    appartment: nil,
    residence: nil,
    street: "Computer Lab",
    county: nil,
    post_code: "60602",
    city: "Chicago",
    employment_status: "Student",
    annual_income: 0,
    net_worth: 500,
  },
  { admin: false,
    password: "12345678",
    password_confirmation: "12345678",
    email: "bob.marley@example.com",
    first_name: "Bob",
    last_name: "Marley",
    dob: "02/06/1945",
    phone: "06.12.34.56.78",
    appartment: nil,
    residence: nil,
    street: "12 Rue de la Tour",
    county: nil,
    post_code: "75008",
    city: "Paris",
    employment_status: "Self Employed",
    annual_income: 100000,
    net_worth: 7500000,
  }])

puts "There are now #{User.count} users in the database."
puts "Number of users with admin priviledges: #{User.where(admin: true).count}"





