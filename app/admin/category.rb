ActiveAdmin.register Category do
  controller do 
    def permitted_params
      params.permit!
    end
  end
  filter :title

  index do
    column :id
    column :title
    column "Data Position" do |category|
    	category.position
    end
    column "Article Position" do |category|
    	category.article_position
    end
    actions 
  end

end
