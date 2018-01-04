class AddCurrntlyToAgencyCategories < ActiveRecord::Migration
  def change
    add_column :agency_categories, :currently, :text
    add_column :agency_categories, :looking_forward, :text
  end
end
