class Book < ActiveRecord::Base

  belongs_to :author

  GENRES = [
    'Biography/Autobiography',
    'Children\'s Novel',
    'Classic',
    'Comic/Graphic Novel',
    'Coming of Age',
    'Crime/Detective',
    'Essay',
    'Fable',
    'Fairy Tale',
    'Fanfiction',
    'Fantasy',
    'Fantasy Novel',
    'Fiction Narrative',
    'Fiction in Verse',
    'Folklore',
    'Historical Fiction',
    'Horror',
    'Humor',
    'Legend',
    'Magical Realism',
    'Metafiction',
    'Mystery',
    'Mythology',
    'Mythopoeia',
    'Narrative Nonfiction',
    'Novel',
    'Realistic Fiction',
    'Science Fiction',
    'Short Story',
    'Speech',
    'Suspense/Thriller',
    'Tall Tale',
    'Textbook',
    'Western'
  ]

  validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, presence: true
  validates :abstract, length: { minimum: 15 }
  validates :pages, :total_in_library,
     numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :genre, inclusion: { in: GENRES, message: "%{value} is not a valid genre" }
  validates :author_id, inclusion: { in: Author.pluck(:id), message: "%{value} is not a valid author" }

  has_many :reservations, dependent: :destroy

  def self.search(query)
    # Verified we're using sanitized variables to avoid SQL injections
    Book.joins(:author).where("name like ? OR title like ? OR isbn = ?", "%#{query}%", "%#{query}%", "#{query}")
  end

end
