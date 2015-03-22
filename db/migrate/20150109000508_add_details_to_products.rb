class AddDetailsToProducts < ActiveRecord::Migration
  def change
      change_table :products do |t|
        t.remove :name
        t.string :part_number 
        t.index :part_number 
        t.rename :description, :desc
      end
  end
end
