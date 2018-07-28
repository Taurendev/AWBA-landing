require 'test_helper'

class AdminHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_home_dashboard_url
    assert_response :success
  end

end
