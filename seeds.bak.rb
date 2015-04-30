# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.where(isbn: '054792822X')
    .first_or_create!(
  title:              'The Hobbit',
  author_id:          1,
  genre:              'Fantasy Novel',
  abstract:           'Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.',
  pages:              300,
  image_cover_url:    'books/the_hobbit.jpg',
  published_on:       Date.parse("18-09-2012"),
  total_in_library:   5,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '1503214133')
    .first_or_create!(
  title:              'Anne of Green Gables',
  author_id:          2,
  genre:              'Novel',
  abstract:           'Anne is described as bright and quick, eager to please, talkative, and extremely imaginative. She has a pale face with freckles and usually braids her red hair. When asked her name, Anne asks Marilla to call her Cordelia, which Marilla refuses; Anne then insists that if she is to be called Anne, it must be spelled with an e, as that spelling is "so much more distinguished." Marilla at first says the girl must return to the orphanage, but after a few days she decides to let her stay. Marilla feels that she could be a good influence on the girl and had also overheard that another disagreeable woman in town might take Anne in instead. As a child of imagination, Anne takes much joy in life and adapts quickly, thriving in the close-knit farming village. Her talkativeness initially drives the prim, duty-driven Marilla to distraction, although Matthew falls for her charm immediately. Anne says that they are "kindred spirits." The book recounts Anne\'s adventures in making a home: the country school where she quickly excels in her studies; her friendship with Diana Barry (her best or "bosom friend" as Anne fondly calls her); her budding literary ambitions; and her rivalry with classmate Gilbert Blythe, who teases her about her red hair. For that he earns her instant hatred, although he apologizes many times. As time passes, Anne realizes she no longer hates Gilbert but cannot bring herself to admit it. However, by the end of the book they become friends. The book also follows Anne\'s adventures in quiet, old-fashioned Avonlea. Episodes include her play time with friends (Diana, Jane Andrews and Ruby Gillis), her run-ins with the unpleasant Pye sisters (Gertie and Josie), and domestic mishaps such as dyeing her hair green (while intending to dye it black) or accidentally getting Diana drunk (by giving her what she thinks is raspberry cordial but is currant wine).',
  pages:              198,
  image_cover_url:    'books/anne_of_green_gables.jpg',
  published_on:       Date.parse("01-06-1908"),
  total_in_library:   1,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

User.where(user_id: 'user1')
    .first_or_create!(
  name:               'John Doe',
  password_digest:    'XXXXXX',
  admin:              false
)