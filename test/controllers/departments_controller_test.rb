require 'test_helper'

class DepartmentsControllerTest < ActionController::TestCase
  test "should get cse" do
    get :cse
    assert_response :success
  end

  test "should get ece" do
    get :ece
    assert_response :success
  end

  test "should get civil" do
    get :civil
    assert_response :success
  end

  test "should get mech" do
    get :mech
    assert_response :success
  end

  test "should get ee" do
    get :ee
    assert_response :success
  end

  test "should get hum" do
    get :hum
    assert_response :success
  end

end
