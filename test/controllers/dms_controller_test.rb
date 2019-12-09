require 'test_helper'

class DmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dms_index_url
    assert_response :success
  end

end
