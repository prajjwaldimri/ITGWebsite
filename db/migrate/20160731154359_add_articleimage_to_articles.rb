class AddArticleimageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :articleimage, :string
  end
end
