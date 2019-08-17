class AddUserIdToPosts < ActiveRecord::Migration[5.1]
  def change
      add_column :posts,  :user_id, :integer
      add_index :users, :username, unique: true
  end
end
