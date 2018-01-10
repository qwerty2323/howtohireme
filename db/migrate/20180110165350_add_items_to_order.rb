class AddItemsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :items, :string
  end
end
