# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Subject.destroy_all

art      = Subject.create! name: 'Art'
graphics = Subject.create! name: 'Graphics'
web      = Subject.create! name: 'Web'
dev      = Subject.create! name: 'Development'
business = Subject.create! name: 'Business'

Video.create! title: 'Drawing Basics',              icon: 'drawing.jpg',    subject_id: art.id
Video.create! title: 'Fundamentals of Painting',    icon: 'painting.jpg',   subject_id: art.id
Video.create! title: 'Digital Painting Techniques', icon: 'digital.jpg',    subject_id: art.id
Video.create! title: 'Illustrations and Murals',    icon: 'airbrush.jpg',   subject_id: art.id

Video.create! title: 'Photoshop Basics',            icon: 'photoshop.jpg',  subject_id: graphics.id
Video.create! title: 'Advanced Illustrator',        icon: 'illustrator.jpg',subject_id: graphics.id
Video.create! title: 'Flash Basics for Web',        icon: 'flash.jpg',      subject_id: graphics.id
Video.create! title: 'Web Graphics with Fireworks', icon: 'fireworks.jpg',  subject_id: graphics.id

Video.create! title: 'The future of HTML5',         icon: 'html5.jpg',      subject_id: web.id
Video.create! title: 'Designing with CSS3',         icon: 'css3.jpg',       subject_id: web.id
Video.create! title: 'Responsive Design for Mobile',icon: 'responsive.jpg', subject_id: web.id
Video.create! title: 'Animating with jQuery',       icon: 'jquery.jpg',     subject_id: web.id

Video.create! title: 'The JavaScript Language',     icon: 'javascript.jpg', subject_id: dev.id
Video.create! title: 'PHP for Web Applications',    icon: 'php.jpg',        subject_id: dev.id
Video.create! title: 'The Python Language',         icon: 'python.jpg',     subject_id: dev.id
Video.create! title: 'The Ruby Language',           icon: 'ruby.jpg',       subject_id: dev.id

Video.create! title: 'How to Sell',                 icon: 'sell.jpg',       subject_id: business.id
Video.create! title: 'How to get the Right Clients',icon: 'clients.jpg',    subject_id: business.id
Video.create! title: 'Become a Freelance Ninja',    icon: 'freelance.jpg',  subject_id: business.id
Video.create! title: 'Launch your Business Startup',icon: 'startup.jpg',    subject_id: business.id
