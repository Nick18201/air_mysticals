class Animal < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :location, presence: true
  has_many :booking
end
