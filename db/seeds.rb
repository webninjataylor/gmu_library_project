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
  published_on:       Date.parse("21-09-1937"),
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

Book.where(isbn: '1503280292')
    .first_or_create!(
  title:              'Little Women',
  author_id:          3,
  genre:              'Coming of Age',
  abstract:           'Little Women is a novel by American author Louisa May Alcott (1832–1888), which was originally published in two volumes in 1868 and 1869. Alcott wrote the books rapidly over several months at the request of her publisher. The novel follows the lives of four sisters—Meg, Jo, Beth, and Amy March—detailing their passage from childhood to womanhood, and is loosely based on the author and her three sisters. Little Women was an immediate commercial and critical success, and readers demanded to know more about the characters. Alcott quickly completed a second volume, entitled Good Wives. It was also successful. The two volumes were issued in 1880 in a single work entitled Little Women. Alcott also wrote two sequels to her popular work, both of which also featured the March sisters: Little Men (1871) and Jo\'s Boys (1886). Although Little Women was a novel for girls, it differed notably from the current writings for children, especially girls. The novel addressed three major themes: "domesticity, work, and true love, all of them interdependent and each necessary to the achievement of its heroine\'s individual identity." Little Women "has been read as a romance or as a quest, or both. It has been read as a family drama that validates virtue over wealth", but also "as a means of escaping that life by women who knew its gender constraints only too well". According to Sarah Elbert, Alcott created a new form of literature, one that took elements from Romantic children\'s fiction and combined it with others from sentimental novels, resulting in a totally new format. Elbert argued that within Little Women can be found the first vision of the "All-American girl" and that her multiple aspects are embodied in the differing March sisters.',
  pages:              280,
  image_cover_url:    'books/little_women.jpg',
  published_on:       Date.parse("01-01-1868"),
  total_in_library:   3,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '1505222893')
    .first_or_create!(
  title:              'The Secret Garden',
  author_id:          5,
  genre:              'Children\'s Novel',
  abstract:           'A young British girl born and raised in India loses her neglectful parents in an earthquake. She is returned to England to live at her uncle\'s estate. Her uncle is very distant due to the loss of his wife ten years before. Neglected once again, she begins exploring the estate and discovers a garden that has been locked and neglected. Aided by one of the servants\' brothers, she begins restoring the garden, and eventually discovers some other secrets of the manor.',
  pages:              146,
  image_cover_url:    'books/the_secret_garden.jpg',
  published_on:       Date.parse("01-01-1911"),
  total_in_library:   2,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0439708184')
    .first_or_create!(
  title:              'Harry Potter and the Sorcerer\'s Stone',
  author_id:          4,
  genre:              'Fantasy',
  abstract:           'Harry Potter has no idea how famous he is. That\'s because he\'s being raised by his miserable aunt and uncle who are terrified Harry will learn that he\'s really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny.',
  pages:              309,
  image_cover_url:    'books/harry_potter_and_the_sorcerers_stone.jpg',
  published_on:       Date.parse("26-06-1997"),
  total_in_library:   10,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '9780439064873')
    .first_or_create!(
  title:              'Harry Potter and the Chamber of Secrets',
  author_id:          6,
  genre:              'Fantasy',
  abstract:           'The Dursleys were so mean that hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\'s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike. And strike it does. For in Harry\'s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls\' bathroom, and the unwanted attentions of Ron Weasley\'s younger sister, Ginny. But each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself?',
  pages:              341,
  image_cover_url:    'books/harry_potter_and_the_chamber_of_secrets.jpg',
  published_on:       Date.parse("02-07-1998"),
  total_in_library:   8,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0439136369')
    .first_or_create!(
  title:              'Harry Potter and the Prisoner of Azkaban',
  author_id:          7,
  genre:              'Fantasy',
  abstract:           'For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort. Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter\'s defeat of You-Know-Who was Black\'s downfall as well. And the Azkban guards heard Black muttering in his sleep, "He\'s at Hogwarts...he\'s at Hogwarts." Harry Potter isn\'t safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst.',
  pages:              448,
  image_cover_url:    'books/harry_potter_and_the_prisoner_of_azkaban.jpg',
  published_on:       Date.parse("08-07-1999"),
  total_in_library:   3,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0439139600')
    .first_or_create!(
  title:              'Harry Potter and the Goblet of Fire',
  author_id:          8,
  genre:              'Fantasy',
  abstract:           'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup. He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for a hundred years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards. And in his case, different can be deadly.',
  pages:              752,
  image_cover_url:    'books/harry_potter_and_the_goblet_of_fire.jpg',
  published_on:       Date.parse("08-07-2000"),
  total_in_library:   6,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0439358078')
    .first_or_create!(
  title:              'Harry Potter and the Order of the Phoenix',
  author_id:          9,
  genre:              'Fantasy',
  abstract:           'In his fifth year at Hogwart\'s, Harry faces challenges at every turn, from the dark threat of He-Who-Must-Not-Be-Named and the unreliability of the government of the magical world to the rise of Ron Weasley as the keeper of the Gryffindor Quidditch Team. Along the way he learns about the strength of his friends, the fierceness of his enemies, and the meaning of sacrifice.',
  pages:              896,
  image_cover_url:    'books/harry_potter_and_the_order_of_the_phoenix.jpg',
  published_on:       Date.parse("21-06-2003"),
  total_in_library:   5,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0439785960')
    .first_or_create!(
  title:              'Harry Potter and the Half-Blood Prince',
  author_id:          10,
  genre:              'Fantasy',
  abstract:           'The war against Voldemort is not going well; even the Muggles have been affected. Dumbledore is absent from Hogwarts for long stretches of time, and the Order of the Phoenix has already suffered losses. And yet . . . as with all wars, life goes on. Sixth-year students learn to Apparate. Teenagers flirt and fight and fall in love. Harry receives some extraordinary help in Potions from the mysterious Half-Blood Prince. And with Dumbledore\'s guidance, he seeks out the full, complex story of the boy who became Lord Voldemort -- and thus finds what may be his only vulnerability.',
  pages:              652,
  image_cover_url:    'books/harry_potter_and_the_half-blood_prince.jpg',
  published_on:       Date.parse("16-07-2005"),
  total_in_library:   12,
  created_at:         DateTime.new(2015, 4, 29),
  updated_at:         DateTime.new(2015, 4, 29)
)

Book.where(isbn: '0545139708')
    .first_or_create!(
  title:              'Harry Potter and the Deathly Hallows',
  author_id:          10,
  genre:              'Fantasy',
  abstract:           'Readers beware. The brilliant, breathtaking conclusion to J.K. Rowling\'s spellbinding series is not for the faint of heart--such revelations, battles, and betrayals await in Harry Potter and the Deathly Hallows that no fan will make it to the end unscathed. Luckily, Rowling has prepped loyal readers for the end of her series by doling out increasingly dark and dangerous tales of magic and mystery, shot through with lessons about honor and contempt, love and loss, and right and wrong. Fear not, you will find no spoilers in our review--to tell the plot would ruin the journey, and Harry Potter and the Deathly Hallows is an odyssey the likes of which Rowling\'s fans have not yet seen, and are not likely to forget. But we would be remiss if we did not offer one small suggestion before you embark on your final adventure with Harry--bring plenty of tissues.',
  pages:              784,
  image_cover_url:    'books/harry_potter_and_the_deathly_hallows.jpg',
  published_on:       Date.parse("21-07-2007"),
  total_in_library:   1,
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
