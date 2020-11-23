class Animal < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :location, presence: true
end
