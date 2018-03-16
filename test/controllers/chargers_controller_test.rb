require 'test_helper'

class ChargersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chargers_new_url
    assert_response :success
  end

end
