class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.text :post_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :articles, :title, unique: true
  end
end
