# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Society.create!([{
	name: "MTJOEEEEEE",
	logo: "\/assets\/society-images\/bookclub-umelb.jpg",
    description: "adgnalkjdfhaldshfklajdhg",
    short_description:"bajgdflioahlgdvhal",
    website: "www.mtjoe.com",
    office_address_line1: "SDAgflkaDF",
    office_address_line2: "ADGFadgasgdadf",
    office_state: "VIC",
    office_city: "Melbourne",
    office_postcode: "3053",
    email: "mtjoe@gmail.com",
    phone_number:"0425655553"
}, {
	name: "Environment Students Society",
	logo: "/assets/society-images/bookclub-umelb.jpg",
	description: "ENVIRONMENTS FTW!!!",
	short_description: "asnvefwjwefjiewfbdv shfwjhefwjefw",
	website: "http://www.jancok.com",
	office_address_line1: "asdsdfasdfasdf",
    office_address_line2: "asdasdfsdfd",
    office_state: "asdwegqwg",
    office_city: "asddgweefv",
    office_postcode: "2346",
	email: "envi@gmail.com",
	phone_number: "0474811963"
}, {
	name: "Book Club Unimelb",
	logo: "/assets/society-images/bookclub-umelb.jpg",
	description: "Nerdies and pizzas.",
	short_description: "asnvefwjwefjiewfbdv shfwjhefwjefw",
	website: "http://www.jancok.com", 
	office_address_line1: "asdsdfasdfasdf",
    office_address_line2: "asdasdfsdfd",
    office_state: "asdwegqwg",
    office_city: "asddgweefv",
    office_postcode: "2346",
	email: "bc@gmail.com",
	phone_number: "0474811963"
}])


Category.create([{
	name: "Book"
}, {
	name: "Business"
},{
	name: "General"
},{
	name: "Education"
},{
	name: "Philanthrophy"
},{
	name: "Entertainment"
},{
	name: "Food & Drinks"
},{
	name: "Sports"
},{
	name: "Course related"
},{
	name: "Language"
},{
	name: "Cultural"
},{
	name: "Political/Activists"
},{
	name: "Spiritual"
}, {
	name: "Science"
}])

University.create([{
	name: "University of Melbourne",
	logo: "/assets/university-logos/unimelb-logo.jpg"
}, {
	name: "Monash University",
	logo: "/assets/university-logos/monash-logo.jpg"
}])

UniversityAdmin.create([{
	university_id: 1,
	user_id: 1
}])
SocietyAdmin.create([{
	user_id: 1,
	society_id: 1
}])

SocietyUniversity.create([{
	society_id: 1,
	university_id:1, 
}])


