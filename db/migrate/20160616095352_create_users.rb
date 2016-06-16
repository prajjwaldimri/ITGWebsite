class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :rollno
      t.string :name
      t.string :email
      t.string :user_type

      t.timestamps null: false
    end
  end
end
