class AddArticleposToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :article_position, :integer
  end
end
