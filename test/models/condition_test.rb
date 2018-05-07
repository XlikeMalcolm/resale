require 'test_helper'

class ConditionTest < ActiveSupport::TestCase
  def setup
  	@condition = Condition.new(name: "Brand new")
  end

  test "should be valid" do
  	assert @condition.valid?
  end

  # Testing presences
  test "name should be present" do
  	@condition.name = "  "
  	assert_not @condition.valid?
  end
end
