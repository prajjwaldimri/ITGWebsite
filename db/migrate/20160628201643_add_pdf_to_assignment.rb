class AddPdfToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :pdf, :string
  end
end
