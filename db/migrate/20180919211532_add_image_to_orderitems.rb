class AddImageToOrderitems < ActiveRecord::Migration[5.2]
  def change
    add_column(:order_items, :image_tag, :string)
  end
end
