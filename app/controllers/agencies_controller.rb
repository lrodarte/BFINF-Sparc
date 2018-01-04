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

class AgenciesController < ApplicationController
  def index
   	if @query.present?
  		@agencies=Agency.search_by_title(@query)
  	else
  		@agencies = Agency.where("'#{params[:type]}' = ANY (agency_policies)")
  	end
  end

  def articles
    if @query.present?
      @agencies=Agency.search_by_title(@query)
    else
      @agencies = Agency.where("'Articles' = ANY (agency_policies)")
    end
  end

  def search
  	if params[:query].present?
  		@agencies=Agency.search_by_title(params[:query])
  	else
  		@agencies= Agency.all
  	end

    respond_to do |format|
      format.json{
      }
      format.html{
        @query = params[:query]
        @agencies = @agencies
        redirect_to "/data", query: @query
      }
    end
  end


  def compare
    if params[:ids] == nil
      redirect_to root_path
      return false
    else
      @agency =Agency.where(id: params[:ids].split(","))
      @compare = params[:compare]
      if @compare == "articles"
        @page = "articles"
      else
        @page ="index"
      end
    end
    respond_to do |format|
      format.json{}
      format.html{
        render @page
      }
    end
  end


  def show
  	@agency = Agency.find(params[:id])
    @compare = params[:compare]
    if params[:compare] == "articles"
      @categories = @agency.article_categories.joins(:category).order("categories.article_position asc")    
    else
      @categories = @agency.agency_categories.joins(:category).order("categories.position asc")
      @compare = ""
    end
    respond_to do |format|
      format.json{
      }
      format.html{}
    end
  end
end
