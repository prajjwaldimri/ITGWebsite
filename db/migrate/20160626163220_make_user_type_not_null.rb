class MakeUserTypeNotNull < ActiveRecord::Migration
  def change
    change_column :users, :user_type, :string, null: false
  end
end
