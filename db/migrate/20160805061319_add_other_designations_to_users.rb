class AddOtherDesignationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :other_designations, :string
  end
end
