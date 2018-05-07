require 'test_helper'

class AdvertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adverts_index_url
    assert_response :success
  end

  test "should get show" do
    get adverts_show_url
    assert_response :success
  end

  test "should get new" do
    get adverts_new_url
    assert_response :success
  end

  test "should get edit" do
    get adverts_edit_url
    assert_response :success
  end

end
