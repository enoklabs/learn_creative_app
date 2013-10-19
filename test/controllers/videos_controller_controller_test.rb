require 'test_helper'

class VideosControllerControllerTest < ActionController::TestCase
  test "should get library" do
    get :library
    assert_response :success
  end

end
