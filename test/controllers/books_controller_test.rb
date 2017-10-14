require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get api_books_path
    assert_response :success
  end

end
