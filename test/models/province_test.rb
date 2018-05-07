require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase
  def setup
  	@province = Province.new(name: "Gauteng")
  end

  test "should be valid" do
  	assert @province.valid?
  end

  # Testing presences
  test "name should be present" do
  	@province.name = "  "
  	assert_not @province.valid?
  end
end
