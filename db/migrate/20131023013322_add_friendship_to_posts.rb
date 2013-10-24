class AddFriendshipToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :friendship
  end
end
