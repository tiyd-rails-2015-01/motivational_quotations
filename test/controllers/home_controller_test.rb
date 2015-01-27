require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get goativation" do
    get :goativation
    assert_response :success
  end

end
