class CreateGts < ActiveRecord::Migration
  def change
    rename_column :gts, :desc, :description
  end
end
