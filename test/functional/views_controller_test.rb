require 'test_helper'

class ViewsControllerTest < ActionController::TestCase
  test "should get static_pages" do
    get :static_pages
    assert_response :success
  end

end
