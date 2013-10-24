class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message

      t.timestamps
    end

  reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE posts
          FOREIGN KEY (user_id)
          REFERENCES users(id)
        SQL
      end
    end
  end
end
