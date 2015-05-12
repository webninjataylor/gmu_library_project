class User < ActiveRecord::Base

  has_many :reservations, dependent: :destroy
  has_many :books, through: :reservations

  validates :user_id, :name, presence: true, uniqueness: true

  has_secure_password

end
