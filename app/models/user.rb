class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # As a owner
  has_many :animals, foreign_key: :owner_id
  has_many :reservations, through: :animals, source: :bookings
  # As a renter
  has_many :bookings, foreign_key: :renter_id

  validates :username, presence: true, uniqueness: true
end
