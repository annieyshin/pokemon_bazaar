class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :price, :decimal, precision: 8, scale: 2

      t.timestamps
    end
  end
end
