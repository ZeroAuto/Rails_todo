# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lists = List.create([{ name: "Mike's List", description: "This is Mike's Todo list."}, { name: "Jacki's List", description: "This is Jacki's Todo List."}])