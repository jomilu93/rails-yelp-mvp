class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true, allow_blank: false
  validates :rating, inclusion: { in: 0..5 }, numericality: true
end
