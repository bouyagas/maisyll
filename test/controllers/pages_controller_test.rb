require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get term" do
    get :term
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get log_in" do
    get :log_in
    assert_response :success
  end

end
