class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.column :product_id, :integer
      t.column :quantity, :integer
      t.column :order_id, :integer

      t.timestamps
    end
  end
end
