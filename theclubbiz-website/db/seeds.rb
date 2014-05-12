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
	university: "University of Melbourne",
	description: "Mission\n
Bringing 'ideas worth spreading' to Melbourne Uni\n
Company Overview\n
We are a student-run society at the University of Melbourne, run as a club through the University of Melbourne Student Union: http://union.unimelb.edu.au/

We are operating TEDx events under official license from TED, our official event page being able to be found here: http://www.ted.com/tedx/groups/4231 

We also have the great benefit of being sponsored by the Graduate School of Humanities & Social Sciences, University of Melbourne: http://graduate.arts.unimelb.edu.au/
Description
We offer independently organised TED-style (http://www.ted.com/) events for the local University community, licensed officially by TED. As well as this we offer less formal social events to create a like-minded community. We also wish to hold events that help club members improve their public-speaking abilities and practice spreading their own ideas in an open and friendly environment.
General Information
Our committee for the 2013/2014 term, under the University of Melbourne Student Union, has been elected as:

President : Vesta Gheibi
Vice-President: Megan Toomey
Secretary: Maria Cananzi
Treasurer: Carlita Bloecker

We're always looking for more volunteers to help us organise events, so if you're keen to get involved let us know!

http://tinyurl.com/tedxunimelbvolunteer2014 

Don't forget to sign up to our mailing list if you haven't already:

http://tinyurl.com/tedxunimelbmailing2014",
	short_description: "Bringing ideas worth spreading to Melbourne Uni! TEDxUniMelb is an independently organised series of TEDx events run by passionate Melbourne Uni students.",
	website: "http://www.jancok.com",
	office_address_line1: "University of Melbourne",
	office_address_line2: "University of Melbourne",
    office_state: "Victoria",
    office_city: "Melbourne",
    office_postcode: "3000",
	email: "tedxunimelb@gmail.com",
	phone_number: "0474811963"
}, {
	name: "Environment Students Society", 
	logo: "/assets/society-images/envi.jpg",
	university: "adfgdvsdffq",
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
	university: "adfgdvsdffq",
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



