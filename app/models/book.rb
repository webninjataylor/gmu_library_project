class Book < ActiveRecord::Base
  belongs_to :author

  has_many :reservations, dependent: :destroy
end
