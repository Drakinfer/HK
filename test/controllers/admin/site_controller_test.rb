require "test_helper"

class Admin::SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get indices" do
    get admin_site_index_url
    assert_response :success
  end
end
