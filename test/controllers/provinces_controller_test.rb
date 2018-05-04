require 'test_helper'

class ProvincesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get provinces_new_url
    assert_response :success
  end

  test "should get show" do
    get provinces_show_url
    assert_response :success
  end

  test "should get edit" do
    get provinces_edit_url
    assert_response :success
  end

end
