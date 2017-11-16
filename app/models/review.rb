class Review < ApplicationRecord
  belongs_to :booking
  validates :testimonial, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false }, numericality: { only_integer: true }

  def blank_stars
   5 - rating.to_i
 end
end
