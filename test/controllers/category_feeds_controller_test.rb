require 'test_helper'

class CategoryFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get category_feeds_feed_url
    assert_response :success
  end

end
