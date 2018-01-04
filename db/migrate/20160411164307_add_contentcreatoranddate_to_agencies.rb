class AddContentcreatoranddateToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :content_creator_and_date_completed, :string
  end
end
