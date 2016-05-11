class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true
      t.integer :rent_type
      t.string :rent_amount
      t.boolean :furnished
      t.text :other_amenities
      t.text :visitor_policy

      t.timestamps
    end
  end
end
