require 'test_helper'

class AdvertTest < ActiveSupport::TestCase

  def setup
  	@advert = Advert.new(category_id: 1, title: "This is an example title", price: 10.0, description: "This is an example of a description",
  		condition_id: 3, city_id: 4, image: "This is an example of an image", user_id: 6)
  end

  test "should be valid" do
  	assert @advert.valid?
  end

  # Testing presences
  test "category_id should be present" do
  	@advert.categoty_id = "  "
  	assert_not @category.valid?
  end

end
