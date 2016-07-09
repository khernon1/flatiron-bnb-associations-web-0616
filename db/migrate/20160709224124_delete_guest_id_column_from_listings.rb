class DeleteGuestIdColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :guest_id
  end
end
