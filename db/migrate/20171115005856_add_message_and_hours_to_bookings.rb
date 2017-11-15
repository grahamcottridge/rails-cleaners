class AddMessageAndHoursToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :message, :text
    add_column :bookings, :hrs_work, :integer
    add_column :users, :hourly_rate, :integer
    add_column :users, :phone_number, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :role_cleaner, :boolean, default: false
end
end
