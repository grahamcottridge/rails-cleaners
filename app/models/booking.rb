class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :cleaner, class_name: 'User', foreign_key: 'cleaner_id'
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_id'
  validates :cleaner_id, presence: true
  validates :customer_id, presence: true
  validates :date, presence: true
  validates :status, presence: true
  validates :payment_method, presence: true

  def total_price
    8 * cleaner.hourly_rate
  end
end

