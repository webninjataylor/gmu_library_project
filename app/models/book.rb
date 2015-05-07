class Book < ActiveRecord::Base
  
  belongs_to :author

  validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, :author, presence: true
  validates :abstract, length: { minimum: 15 }
  validates :pages, :total_in_library
     numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validates :genre, inclusion: { in: GENRES, message: "%{value} is not a valid genre" }
  # validates :author, inclusion: { in: AUTHORS, message: "%{value} is not a valid author" }

  has_many :reservations, dependent: :destroy

end
