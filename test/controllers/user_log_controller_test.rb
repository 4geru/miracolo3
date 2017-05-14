require 'test_helper'

class UserLogControllerTest < ActionDispatch::IntegrationTest
  test "should get log_in" do
    get user_log_log_in_url
    assert_response :success
  end

end
