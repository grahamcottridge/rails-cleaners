class DeleteColumnsFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :cleaner_id, :integer
    remove_column :bookings, :customer_id, :integer
  end
end
