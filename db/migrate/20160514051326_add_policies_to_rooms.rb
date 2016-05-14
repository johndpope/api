class AddPoliciesToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :pets_allowed, :boolean
    add_column :rooms, :resides, :boolean
    add_column :rooms, :shared_bathroom, :boolean
    add_column :rooms, :shared_kitchen, :boolean
    add_column :rooms, :shared_living_room, :boolean
    add_column :rooms, :visitors_allowed, :boolean
  end
end
