class AddExpirationToProducts < ActiveRecord::Migration
  def change
    add_column :products, :expiration, :date
  end
end
