if @compare == "articles"
	json.array!(@categories) do |agency|
	  json.category agency.category.title
	  json.category_id agency.category.id
	  json.extract! agency , :id , :description
	end
else
	json.array!(@categories) do |agency|
	  json.category agency.category.title
	  json.category_id agency.category.id
	  json.extract! agency , :id , :currently, :looking_forward
	end
end