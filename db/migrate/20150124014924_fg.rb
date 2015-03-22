class Fg < ActiveRecord::Migration
  def up
    add_column :gts , :cost , :integer
  end

  def down
  end
end
