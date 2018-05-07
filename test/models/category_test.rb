require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
  	@category = Category.new(name: "Mobile")
  end

  test "should be valid" do
  	assert @category.valid?
  end

  # Testing presences
  test "name should be present" do
  	@category.name = "  "
  	assert_not @category.valid?
  end

end
