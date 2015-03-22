class Oldd < ActiveRecord::Migration
    def change
      add_column :folks , :user_review , :string 
    end
  end
