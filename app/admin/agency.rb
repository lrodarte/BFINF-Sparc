ActiveAdmin.register Agency do
  controller do 
    def permitted_params
      params.permit!
    end

    def new
      @agency = Agency.new
      @categories = Category.all
      Category.all.each do |c|
        @agency.agency_categories.build(category_id: c.id)
        @agency.article_categories.build(category_id: c.id)
      end   
    end

    def edit
      @agency = Agency.find(params[:id])
      @categories = Category.all
    end
  end

  filter :title

  index do
    column :id
    column :title
    column :tags
    column :agency_policies
    actions 
  end


  form do |f|
    f.inputs "Agency Info" do
      f.input :title
      f.input :agency_policies,label: "Policy Type", as: :check_boxes, collection: ["Articles","Data"]
      #data inputs
      f.input :quick_links,label: "Data Quick Links", :input_html => {:class => "ckeditor"}
      f.input :documents_cited,label: "Data Documents Cited", :input_html => {:class => "ckeditor"}
      f.input :content_creator_and_date_completed, label: "Data Content Creator and Date Completed"
      #article inputs
      f.input :articles_quick_links, :input_html => {:class => "ckeditor"}
      f.input :article_documents_cited, :input_html => {:class => "ckeditor"}      
      f.input :article_content_creator_and_date_completed

      f.input :tags
      f.input :logo, :hint => f.object.logo.present? \
            ? f.template.image_tag(f.object.logo.url, width: "200px")
            : f.template.content_tag(:span, "No static page header image has been uploaded yet. If you just uploaded one, it will display after you've created or updated this page.")
      f.has_many :agency_categories, heading: "Data Categories" do |ac|
      	ac.input :category
        ac.input :currently, as: :ckeditor
        ac.input :looking_forward, as: :ckeditor
        ac.input :_destroy, :as => :boolean
      end
      f.has_many :article_categories, heading: "Article Categories" do |ac|
        ac.input :category
        ac.input :description, as: :ckeditor
        ac.input :_destroy, :as => :boolean
      end
    end  
    f.actions
  end

  # form :partial => 'form'
end


