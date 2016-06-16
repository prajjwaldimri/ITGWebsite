class AddIndexToUsersRollno < ActiveRecord::Migration
  def change
    add_index :users, [:rollno, :email], :unique => true
    add_index :users, :email
  end
end
