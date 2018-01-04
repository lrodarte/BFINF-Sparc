# == Schema Information
#
# Table name: article_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  agency_id   :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ArticleCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :agency
end
