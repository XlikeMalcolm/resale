require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
  end

  test "should get sitemap" do
    get static_pages_sitemap_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get howitworks" do
    get static_pages_howitworks_url
    assert_response :success
  end

  test "should get privacy" do
    get static_pages_privacy_url
    assert_response :success
  end

  test "should get terms" do
    get static_pages_terms_url
    assert_response :success
  end

  test "should get services" do
    get static_pages_services_url
    assert_response :success
  end

end
