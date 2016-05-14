class AddOtherToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :other, :text
  end
end
