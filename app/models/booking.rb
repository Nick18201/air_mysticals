class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :renter, class_name: 'User'

  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true, inclusion: { in: ['accepted', 'pending', 'denied'] }

end
