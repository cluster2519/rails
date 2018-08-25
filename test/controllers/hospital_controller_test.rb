require 'test_helper'

class HospitalControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hospital_show_url
    assert_response :success
  end

end
