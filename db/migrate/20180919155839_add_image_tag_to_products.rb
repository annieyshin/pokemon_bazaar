class AddImageTagToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column(:products, :image_tag, :string)
  end
end
