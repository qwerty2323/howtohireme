
class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.integer :total
      t.boolean :free_delivery

      t.timestamps
    end
  end
end
