class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
      t.belongs_to :category, index: true
      t.belongs_to :agency, index: true
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :article_categories, :categories
    add_foreign_key :article_categories, :agencies
  end
end
