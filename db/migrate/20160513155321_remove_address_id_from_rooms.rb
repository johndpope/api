class RemoveAddressIdFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :address_id, :integer
  end
end
