require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get motivation" do
    get :motivation
    assert_response :success
  end

end
