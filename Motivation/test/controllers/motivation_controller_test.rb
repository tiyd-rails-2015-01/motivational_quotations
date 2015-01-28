require 'test_helper'

class MotivationControllerTest < ActionController::TestCase
  test "should get feel_good" do
    get :feel_good
    assert_response :success
  end

end
