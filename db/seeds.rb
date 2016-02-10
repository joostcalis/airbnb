# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
joost = User.create({ firstname: "Joost", lastname: "Calis", city: "Bussum", email: "joost_calis@hotmail.com"})

cabin1 = Listing.create({ 
	title: "Beautiful cabin in the woods", 
	location: "Fjorddersonn, Norway", 
	price: 139,
	image: "/app/assets/images/Cabin1.jpg",
	user_id: joost.id,
	start_available: Date.parse('2016-03-01'), 
	end_available: Date.parse('2016-08-01'), 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, dolore, doloremque! Tempore architecto laboriosam earum fugit, eligendi maxime! Quas perferendis praesentium libero sapiente est deserunt cumque assumenda pariatur modi laborum!"})

cabin2 = Listing.create({ 
	title: "Beautiful cabins in the woods", 
	location: "Amsterdam, Norway", 
	price: 239,
	image: "cabin6.jpg",
	user_id: joost.id,
	start_available: Date.parse('2016-03-01'), 
	end_available: Date.parse('2016-08-01'), 
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, dolore, doloremque! Tempore architecto laboriosam earum fugit, eligendi maxime! Quas perferendis praesentium libero sapiente est deserunt cumque assumenda pariatur modi laborum!"})