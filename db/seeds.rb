# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Person.create(name: "Dave")
person = Person.create(name: "Hiromi")

Appointment.create(time: Time.new + 3.weeks, person_id: person.id, dentist: "Dr. Douchebag", description:"Lorem ipsum, etc." , is_checkup: false, estimated_cost: 0)
