# == Schema Information
#
# Table name: agencies
#
#  id                                         :integer          not null, primary key
#  logo                                       :string
#  title                                      :string
#  created_at                                 :datetime         not null
#  updated_at                                 :datetime         not null
#  quick_links                                :text
#  documents_cited                            :text
#  tags                                       :string
#  content_creator_and_date_completed         :string
#  article_content_creator_and_date_completed :string
#  article_documents_cited                    :text
#  articles_quick_links                       :text
#

class Agency < ActiveRecord::Base
	include PgSearch
	mount_uploader :logo, ImageUploader
    has_many :agency_categories, dependent: :destroy
    has_many :article_categories, dependent: :destroy
	default_scope  { order(:title => :asc) }
	# after_create :set_categories
    accepts_nested_attributes_for :agency_categories, :allow_destroy => true
    accepts_nested_attributes_for :article_categories, :allow_destroy => true
	pg_search_scope :search_by_title, :against => [:title, :tags] ,:using => {
                    :tsearch => {:prefix => true}
                  }

    private

    def set_categories
    	Category.all.each do |c|
    		AgencyCategory.create(category_id: c.id, agency_id: self.id)
    	end
    end
end
