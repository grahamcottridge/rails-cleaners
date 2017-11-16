class AddUserReferenceToReview < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :booking_id, :references
     add_reference :reviews, :user, foreign_key: true, index: true
  end
end
