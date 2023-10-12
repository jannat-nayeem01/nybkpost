require "test_helper"

class HeadlinesControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch_headlines" do
    get headlines_fetch_headlines_url
    assert_response :success
  end
end
