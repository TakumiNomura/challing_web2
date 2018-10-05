require 'test_helper'

class SavingsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get savings_main_url
    assert_response :success
  end

end
