require 'test_helper'

class CityTest < ActiveSupport::TestCase
  def setup
  	@city = City.new(name: "Johannesburg")
  end

  test "should be valid" do
  	assert @city.valid?
  end

  # Testing presences
  test "name should be present" do
  	@city.name = "  "
  	assert_not @city.valid?
  end

  test "province_id should be present" do
  	@city.province_id = "  "
  	assert_not @city.valid?
  end

end
