# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
  {email: "bob.marley@example.com", terms: true, admin: false, first_name: "Bob", last_name: "Marley",
   dob: "02/06/1945", phone: "0612345678", appartment: nil, residence: nil, street: "12 Rue de la Tour", county: nil,
   post_code: "75008", city: "Paris", employment_status: "Self Employed", annual_income: 100000.0, net_worth: 750000}])
