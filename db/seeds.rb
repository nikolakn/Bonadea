# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s = Staff.new(name: "NikolaKn", type: "Recepcija", premission: 1, password:"testsifra", password_confirmation: "testsifra")


s.save

s1 = Staff.new(name: "bata", type: "Ordinacija", premission: 2, password:"bonadea", password_confirmation: "bonadea")

s1.save

s2 = Staff.new(name: "Gabriela", type: "Recepcija", premission: 2, password:"bonadea", password_confirmation: "bonadea")

s2.save