class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :title
      t.string :subject
      t.integer :semester
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :assignments, [:user_id, :created_at]
  end
end
