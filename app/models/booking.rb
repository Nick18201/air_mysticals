class Booking < ApplicationRecord
  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true, inclusion: { in: ['accepted', 'pending', 'denied'] }
  belongs_to :animal
end
