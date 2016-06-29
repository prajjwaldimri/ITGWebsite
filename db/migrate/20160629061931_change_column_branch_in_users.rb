class ChangeColumnBranchInUsers < ActiveRecord::Migration
  def change
    change_column :users, :branch, :string, null: false
  end
end
