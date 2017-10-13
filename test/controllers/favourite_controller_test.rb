require 'test_helper'

class FavouriteControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get favourite_show_url
    assert_response :success
  end

end
