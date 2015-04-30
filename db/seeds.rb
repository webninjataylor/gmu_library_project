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
  genre:              'Fantasy',
  abstract:           'Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.',
  pages:              300,
  image_cover_url:    'books/the_hobbit.jpg',
  published_on:       Date.parse("18-09-2012"),
  total_in_library:   5,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Author.where(name: 'Louisa May Alcott')
    .first_or_create!(
  dob:                Date.parse("29-11-1832"),
  nationality:        'United States',
  awards:             'None',
  biography:          'Louisa May Alcott was born on November 29, 1832, in Germantown, Pennsylvania. Henry David Thoreau and Ralph Waldo Emerson were family friends. Alcott wrote under various pseudonyms and only started using her own name when she was ready to commit to writing. Her novel Little Women gave Louisa May Alcott financial independence and a lifetime writing career. She died in 1888.',
  image_url:          'authors/alcott.jpg'
)

Author.where(name: 'J.R.R. Tolkien')
    .first_or_create!(
  dob:                Date.parse("03-01-1892"),
  nationality:        'British',
  awards:             'Prometheus, Nebula, Hugo, Mythopoeic, Locus, Gandalf, and Goodreads Choice Awards',
  biography:          'John Ronald Reuel Tolkien (1892-1973) was a major scholar of the English language, specialising in Old and Middle English. Twice Professor of Anglo-Saxon (Old English) at the University of Oxford, he also wrote a number of stories, including most famously The Hobbit (1937) and The Lord of the Rings (1954-1955), which are set in a pre-historic era in an invented version of our world which he called by the Middle English name of Middle-earth. This was peopled by Men (and women), Elves, Dwarves, Trolls, Orcs (or Goblins) and of course Hobbits. He has regularly been condemned by the Eng. Lit. establishment, with honourable exceptions, but loved by literally millions of readers worldwide.',
  image_url:          'authors/tolkien.jpg'
)

Author.where(name: 'J.K. Rowling')
    .first_or_create!(
  dob:                Date.parse("31-07-1965"),
  nationality:        'British',
  awards:             'Hugo, ADG, Goodreads, Andre Norton, Locus, and Mythopoeic',
  biography:          "Joanne Rowling born 31 July 1965), pen names J. K. Rowling and Robert Galbraith, is a British novelist best known as the author of the Harry Potter fantasy series. The books have gained worldwide attention, won multiple awards, and sold more than 400 million copies. They have become the best-selling book series in history and been the basis for a series of films which became the highest-grossing film series in history. Rowling had overall approval on the scripts and maintained creative control by serving as a producer on the final instalment.",
  image_url:          'authors/rowling.jpg'
)

Author.where(name: 'Frances Hodgson Burnett')
    .first_or_create!(
  dob:                Date.parse("24-10-1924"),
  nationality:        'British',
  awards:             'None',
  biography:          "Frances Eliza Hodgson Burnett (24 November 1849 – 29 October 1924) was an American-English playwright and author. She is best known for her children's stories, in particular Little Lord Fauntleroy (published in 1885–1886), A Little Princess (1905), and The Secret Garden (1911).",
  image_url:          'authors/burnett.jpg'
)

Author.where(name: 'L.M. Montgomery')
    .first_or_create!(
  dob:                Date.parse("24-04-1874"),
  nationality:        'Canadian',
  awards:             'None',
  biography:          "Lucy Maud Montgomery (November 30, 1874 – April 24, 1942), publicly known as L. M. Montgomery, was a Canadian author best known for a series of novels beginning in 1908 with Anne of Green Gables. Anne of Green Gables was an immediate success. The central character, Anne, an orphaned girl, made Montgomery famous in her lifetime and gave her an international following.[1] The first novel was followed by a series of sequels with Anne as the central character. Montgomery went on to publish 20 novels as well as 530 short stories, 500 poems, and 30 essays. Most of the novels were set on Prince Edward Island, Canada, and places in the Canadian province became literary landmarks. She was made an Officer of the Order of the British Empire in 1935.",
  image_url:          'authors/montgomery.jpg'
)
