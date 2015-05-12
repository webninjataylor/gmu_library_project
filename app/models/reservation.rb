class Reservation < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  before_create :set_dates

  private

  def set_dates
    self.reserved_on = Time.now
    self.due_on = Time.now + 10
    self.created_at = Time.now
    self.updated_at = Time.now
  end

end
