require 'test_helper'

class MailControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get mail_controller_send_url
    assert_response :success
  end

end
