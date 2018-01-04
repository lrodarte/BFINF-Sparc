class CreateAgencyCategories < ActiveRecord::Migration
  def change
    create_table :agency_categories do |t|
      t.belongs_to :category, index: true
      t.belongs_to :agency, index: true

      t.timestamps null: false
    end
    add_foreign_key :agency_categories, :categories
    add_foreign_key :agency_categories, :agencies
  end
end
