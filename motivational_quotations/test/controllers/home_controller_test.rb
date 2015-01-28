require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get mood" do
    get :mood
    assert_response :success
  end

end
