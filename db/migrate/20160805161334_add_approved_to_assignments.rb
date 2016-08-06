class AddApprovedToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :approved, :boolean, default: false
  end
end
