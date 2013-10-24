class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false

      t.timestamps
    end

    add_index :users, :email, unique: true

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE posts
          ADD CONSTRAINT fk_user_constraint
          FOREIGN KEY (user_id)
          REFERENCES users(id)
        SQL
      end
    end
    
  end
end
