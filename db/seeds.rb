# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

galleries = Gallery.create([{ name: 'Chicago Art House', city: "Chicago", state: "IL", zip:"66666" },
  { name: 'Sooz', city: "Juneau", state: "AK", zip: "99999" },
  { name: 'Jon\'s Art Galery', city: "Allston", state: "MA", zip: "02446", description: "the whackest gallery this side of the Chicago Art House"}])
