require 'test_helper'

class UserEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:testuser)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)

    patch user_path(@user), user: {
      name: "",
      email: "user@invalid",
      rollno: "",
      password: "foo",
      password_confirmation: "bar"
    }
  end

  test "successful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    name = "TestUser"
    email = "test@example.com"
    rollno = "1111111111"
    patch user_path(@user), user: {
      name: name,
      email: email,
      rollno: rollno,
      password: "",
      password_confirmation: ""
    }
    assert_not flash.empty?
    #assert_redirected_to @user
    @user.reload
    assert_equal @user.name, "TestUser"
    assert_equal @user.email, "test@example.com"
    assert_equal @user.rollno, "1111111111"
  end
end
