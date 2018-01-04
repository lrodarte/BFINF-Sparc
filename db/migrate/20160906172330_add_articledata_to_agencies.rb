class AddArticledataToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :article_content_creator_and_date_completed, :string
    add_column :agencies, :article_documents_cited, :text
    add_column :agencies, :articles_quick_links, :text
  end
end
