require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get motivate" do
    get :motivate
    assert_response :success
  end

end
