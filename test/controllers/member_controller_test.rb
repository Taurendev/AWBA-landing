require 'test_helper'

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get member_home_url
    assert_response :success
  end

end
