class AddingForeignKeysToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :customer_id, :integer
    add_column :bookings, :cleaner_id, :integer
  end
end
