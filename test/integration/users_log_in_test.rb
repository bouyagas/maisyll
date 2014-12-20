require 'test_helper'

class UsersLogInTest < ActionDispatch::IntegrationTest
  
   def setup
    @user = users(:michael)
  end
  
   test "login with valid information followed by logout" do
  get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: "", password: "" }
     assert is_logged_in
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
    
  end
end
