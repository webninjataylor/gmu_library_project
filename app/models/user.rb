class User < ActiveRecord::Base

  has_many :reservations, dependent: :destroy
  has_many :books, through: :reservations

  has_secure_password
end
