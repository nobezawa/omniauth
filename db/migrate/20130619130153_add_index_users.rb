class AddIndexUsers < ActiveRecord::Migration
  def up
    add_index :users, :uid, unique: true, name: 'uid_index'
  end

  def down
    remove_index :users, column: 'uid'
  end
end
