class Olddy < ActiveRecord::Migration
  def up
    rename_table :gts , :folks
  end

  def down
  end
end
