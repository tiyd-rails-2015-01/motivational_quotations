require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get moods" do
    get :moods
    assert_response :success
  end

end
