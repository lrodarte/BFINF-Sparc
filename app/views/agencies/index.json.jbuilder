json.array!(@agencies) do |agency|
  json.extract! agency , :title , :id ,:quick_links , :documents_cited,:content_creator_and_date_completed,:articles_quick_links , :article_documents_cited,:article_content_creator_and_date_completed
  json.logo agency.logo.try(:url)
end