require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get indices" do
    get home_index_url
    assert_response :success
  end
end
