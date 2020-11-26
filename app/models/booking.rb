class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :renter, class_name: 'User'

  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true, inclusion: { in: ['accepted', 'pending', 'denied'] }
  validate :dates_in_right_order
  validate :booking_after_today

  def dates_in_right_order
    if ending_date < beginning_date
      errors.add(:ending_date, "must be after start date")
    end
  end

  def booking_after_today
    if beginning_date < Date.today
      errors.add(:beginning_date, "must be after today")
    end
  end

end
