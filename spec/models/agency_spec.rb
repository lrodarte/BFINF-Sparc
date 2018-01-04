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

require 'rails_helper'

RSpec.describe Agency, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
