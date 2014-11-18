class AddStateToFriendship < ActiveRecord::Migration
  def change
    add_column :friendships, :state, :string
  end
end
