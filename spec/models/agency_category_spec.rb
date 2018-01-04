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

require 'rails_helper'

RSpec.describe AgencyCategory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
