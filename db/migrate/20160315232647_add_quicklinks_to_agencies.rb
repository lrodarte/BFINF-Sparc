class AddQuicklinksToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :quick_links, :text
    add_column :agencies, :documents_cited, :text
  end
end
