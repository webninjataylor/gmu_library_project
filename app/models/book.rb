class Book < ActiveRecord::Base
  belongs_to :author

  has_many :reservations, dependent: :destroy

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

end
