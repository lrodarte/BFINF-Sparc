class AddTagsToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :tags, :string
  end
end
