class AddRoomIdToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :addresses, :room, foreign_key: true
  end
end
