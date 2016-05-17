class RenameRoomOtherToComment < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :other, :comment
  end
end
