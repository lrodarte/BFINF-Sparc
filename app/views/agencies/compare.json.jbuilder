json.array!(@agency) do |agency|
  json.extract! agency , :title , :id  , :quick_links, :documents_cited ,:content_creator_and_date_completed ,:articles_quick_links, :article_documents_cited ,:article_content_creator_and_date_completed
  json.logo agency.logo.try(:url)
  json.agency_categories agency.agency_categories.joins(:category).order("categories.position asc") do |ac|
  	json.category ac.category.title
  	json.currently ac.currently
  	json.looking_forward ac.looking_forward
  end
  json.article_categories agency.article_categories.joins(:category).order("categories.position asc") do |ac|
  	json.category ac.category.title
  	json.description ac.description
  end  
end