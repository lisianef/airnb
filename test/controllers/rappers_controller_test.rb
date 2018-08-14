require 'test_helper'

class RappersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get rappers_show_url
    assert_response :success
  end

end
