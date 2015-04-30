# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(
  isbn:               '054792822X',
  title:              'The Hobbit',
  author_id:          1,
  genre:              'Fantasy',
  abstract:           'Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.',
  pages:              300,
  image_cover_url:    'books/the_hobbit.jpg',
  published_on:       Date.parse("18-09-2012"),
  total_in_library:   5,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)