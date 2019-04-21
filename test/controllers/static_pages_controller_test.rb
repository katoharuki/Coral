require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get Coral" do
    get root_path
    assert_response :success
  end

  test "should get top" do
    get static_pages_top_url
    assert_response :success
    assert_select "title", "top"
  end

  test "should get reference" do
    get static_pages_reference_url
    assert_response :success
    assert_select "title", "reference"
  end

  test "should get add" do
    get static_pages_add_url
    assert_response :success
    assert_select "title", "add"
  end

end
