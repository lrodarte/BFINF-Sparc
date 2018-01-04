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

require 'rails_helper'

RSpec.describe ArticleCategory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
