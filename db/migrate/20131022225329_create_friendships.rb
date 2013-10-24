class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :friend_id

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE posts
          ADD CONSTRAINT fk_user_constraint
          FOREIGN KEY (friendship_id)
          REFERENCES friendships(id)
        SQL
      end
    end

  end
end
