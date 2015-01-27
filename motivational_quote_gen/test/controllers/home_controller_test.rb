require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get basemood" do
    get :basemood
    assert_response :success
  end

end
