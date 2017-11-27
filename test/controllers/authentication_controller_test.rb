require 'test_helper'

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get token" do
    post authenticate_path, params: { email: 'tony@rails.com', password: 'master' }, as: :json
    assert_response :success
  end

end
