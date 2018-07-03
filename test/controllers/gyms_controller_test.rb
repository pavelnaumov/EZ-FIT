require 'test_helper'

class GymsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gyms_index_url
    assert_response :success
  end

  test "should get show" do
    get gyms_show_url
    assert_response :success
  end

end
