# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Subject.destroy_all


art = Subject.create! name: 'Art'
graphics = Subject.create! name: 'Graphics'

Video.create! title: 'Drawing Basics', icon: 'drawing.jpg', subject_id: art.id
Video.create! title: 'Fundamentals of Painting', icon: 'painting.jpg', subject_id: art.id
Video.create! title: 'Digital Painting Techniques', icon: 'digital.jpg', subject_id: art.id
Video.create! title: 'Illustrations and Murals', icon: 'airbrushing.jpg', subject_id: art.id

Video.create! title: 'Photoshop Basics', icon: 'photoshop.jpg', subject_id: graphics.id
Video.create! title: 'Advanced Illustrator', icon: 'illustrator.jpg', subject_id: graphics.id
