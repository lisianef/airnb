require 'test_helper'

class RapperControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rapper_index_url
    assert_response :success
  end

  test "should get show" do
    get rapper_show_url
    assert_response :success
  end

end
