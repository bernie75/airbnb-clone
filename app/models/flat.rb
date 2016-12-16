class Flat < ApplicationRecord
  # belongs_to :owner
  has_many :reviews, dependent: :destroy
  validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
  validates :title, uniqueness: true, presence: true
  validates :address, presence: true

   geocoded_by :address
   after_validation :geocode, if: :address_changed?
end
