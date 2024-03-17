require "test_helper"

class Admin::GenerationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_generations_index_url
    assert_response :success
  end
end
