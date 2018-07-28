require 'test_helper'

class MemberListControllerTest < ActionDispatch::IntegrationTest
  test "should get directory" do
    get member_list_directory_url
    assert_response :success
  end

end
