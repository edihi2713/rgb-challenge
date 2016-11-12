require 'test_helper'

class CompetitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competitors_index_url
    assert_response :success
  end

end
