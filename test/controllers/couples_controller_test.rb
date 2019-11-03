require 'test_helper'

class CouplesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get couples_edit_url
    assert_response :success
  end

  test "should get show" do
    get couples_show_url
    assert_response :success
  end

end
