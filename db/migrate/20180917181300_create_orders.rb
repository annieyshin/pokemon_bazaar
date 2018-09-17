class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.column :status, :string
      t.column :account_id, :integer
      t.column :total_price, :decimal

      t.timestamps
    end
  end
end
