class AddShelfIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :shelf_id, :integer
  end
end
