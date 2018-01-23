require 'test_helper'

class PhotoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photo_new_url
    assert_response :success
  end

  test "should get create" do
    get photo_create_url
    assert_response :success
  end

  test "should get destroy" do
    get photo_destroy_url
    assert_response :success
  end

end
