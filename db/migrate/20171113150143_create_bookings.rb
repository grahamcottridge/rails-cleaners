class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :cleaner_id
      t.integer :customer_id
      t.date :date
      t.integer :price
      t.text :address
      t.string :status
      t.string :payment_method

      t.timestamps
    end
  end
end
