class AddFurnitureDetailsToRooms < ActiveRecord::Migration[5.0]
  def change
    [
      :bed,
      :closet,
      :bathroom,
      :rug,
      :tv,
      :night_desk,
      :wifi,
      :radio,
      :drawer,
      :cable,
      :electricity,
      :mirror,
    ].each { |column| add_column :rooms, column, :boolean }
  end
end
