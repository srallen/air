require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get cities" do
    get :cities
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
