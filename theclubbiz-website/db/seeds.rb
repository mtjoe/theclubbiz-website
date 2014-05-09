# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Society.create([{
	name: "TedX Unimelb", 
	logo: "/assets/society-images/tedx-umelb.png",
	description: "A society whose aim is to share ideas to the community.", 
	office_location: "asdnasdcjkna",
	email: "tedx@gmail.com",
	phone_number: "042312412"
}, {
	name: "Environment Students Society", 
	logo: "/assets/society-images/envi.jpg",
	description: "ENVIRONMENTS FTW!!!", 
	office_location: "asdnasdcjkna",
	email: "envi@gmail.com",
	phone_number: "042312412"
}, {
	name: "Book Club Unimelb", 
	logo: "/assets/society-images/bookclub-umelb.jpg",
	description: "Nerdies and pizzas.", 
	office_location: "asdnasdcjkna",
	email: "bc@gmail.com",
	phone_number: "042312412"
}])