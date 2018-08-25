require 'test_helper'

class InquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get inquiry_show_url
    assert_response :success
  end

  test "should get confirm" do
    get inquiry_confirm_url
    assert_response :success
  end

end
