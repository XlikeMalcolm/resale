require 'test_helper'

class ConditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conditions_index_url
    assert_response :success
  end

  test "should get new" do
    get conditions_new_url
    assert_response :success
  end

  test "should get show" do
    get conditions_show_url
    assert_response :success
  end

  test "should get edit" do
    get conditions_edit_url
    assert_response :success
  end

end
