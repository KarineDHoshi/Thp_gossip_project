require 'test_helper'

class DynPagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get gossiper_all_gossips" do
    get dyn_pages_controller_gossiper_all_gossips_url
    assert_response :success
  end

end
