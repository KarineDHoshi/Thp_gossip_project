require 'test_helper'

class GreetingControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome_message" do
    get greeting_welcome_message_url
    assert_response :success
  end

end
