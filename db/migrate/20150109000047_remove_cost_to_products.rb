class RemoveCostToProducts < ActiveRecord::Migration
  def up
    remove_column :products, :cost
  end

  def down
    add_column :products, :cost, :integer
  end
end
