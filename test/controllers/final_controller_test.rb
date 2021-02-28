require "test_helper"

class FinalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get final_index_url
    assert_response :success
  end

  test "should get show" do
    get final_show_url
    assert_response :success
  end
end
