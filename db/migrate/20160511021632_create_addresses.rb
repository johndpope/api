class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :apt
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
