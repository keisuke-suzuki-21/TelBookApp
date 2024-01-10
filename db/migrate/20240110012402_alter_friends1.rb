class AlterFriends1 < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :password_digest, :string
  end
end
