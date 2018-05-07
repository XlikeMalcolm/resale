class Search < ApplicationRecord
  def adverts
  	@adverts ||= find_adverts
  end

  private
  def find_adverts
  	adverts = Advert.all
  	adverts = adverts.where(category_id: category_id) if category_id.present?
  	adverts = adverts.where(city_id: city_id) if city_id.present?
  	adverts = adverts.where("title like ?", "%#{keywords}") if keywords.present?
  	adverts
  end
end
