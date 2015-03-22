class Language < ActiveRecord::Migration
  def up
    create_table  :langues do |t|
      t.references :folks
    end
    execute <<-SQL
      ALTER  TABLE  langues
        ADD CONSTRAINT fk_langues_folks
        FOREIGN KEY (id)
        REFERENCES folks(id)
    SQL
    add_column :folks , :email , :string
    rename_column :folks , :user_review , :reviews 
  end

  def down
    rename_column :folks , :reviews , :user_review
    remove_column :folks , :email
    execute  <<-SQL
      ALTER TABLE langues
      DROP FOREIGN KEY fk_langues_folks
    SQL
    drop_table :langues
  end
end
