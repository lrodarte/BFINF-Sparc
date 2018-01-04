# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Category < ActiveRecord::Base
	has_many :agency_categories
	has_many :article_categories
end
