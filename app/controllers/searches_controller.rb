class SearchesController < ApplicationController
  def new
  	@search = Search.new
  end

  def create
  	@search = Search.create(search_params)
  	redirect_to @search
  end

  def show
  	@search = Search.find(params[:id])
  	@adverts = @search.adverts
  end

  private

  def search_params
  	params.require(:search).permit(:category_id, :city_id, :keywords)
  end

end
