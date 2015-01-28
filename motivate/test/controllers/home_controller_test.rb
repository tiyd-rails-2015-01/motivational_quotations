require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get yourmood" do
    get :yourmood
    assert_response :success
  end

end
