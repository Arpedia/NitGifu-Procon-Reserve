require 'test_helper'

class ReservesControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get facility" do
    get :facility
    assert_response :success
  end

end
