class RenameAddressesLine1 < ActiveRecord::Migration[5.0]
  def change
    change_table :addresses do |t|
      t.rename :line_1, :line1
    end
  end
end
