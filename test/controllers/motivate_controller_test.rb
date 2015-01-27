require 'test_helper'

class MotivateControllerTest < ActionController::TestCase
  test "should get quotes" do
    get :quotes
    assert_response :success
  end

end
