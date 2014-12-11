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


Etf.create!([
  { name: "CAC 40",               ticker: "CAC FP", isin: "FR0007052782", asset_class: "Equity France",           currency: "EUR", manager: "Amundi", fee: 0.0025 },
  { name: "STOXX Europe 600",     ticker: "500 FP", isin: "FR0010791004", asset_class: "Equity Europe",           currency: "EUR", manager: "Lyxor",  fee: 0.0015 },
  { name: "S&P 500",              ticker: "C6E FP", isin: "FR0010892224", asset_class: "Equity USA",              currency: "EUR", manager: "Amundi", fee: 0.0018 },
  { name: "MSCI Europe Value",    ticker: "CV9 FP", isin: "FR0010717116", asset_class: "Equity Europe Value",     currency: "EUR", manager: "Amundi", fee: 0.0035 },
  { name: "EURO STOXX Small Cap", ticker: "ESM FP", isin: "FR0010900076", asset_class: "Equity Europe Small Cap", currency: "EUR", manager: "Amundi", fee: 0.0030 }
  ])

puts "There are now #{Etf.count} ETFs in the database."


