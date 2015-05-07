class Reservation < ActiveRecord::Base
  belongs_to :book, :user
end
