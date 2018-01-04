# == Schema Information
#
# Table name: agency_categories
#
#  id              :integer          not null, primary key
#  category_id     :integer
#  agency_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  currently       :text
#  looking_forward :text
#

class AgencyCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :agency
end
