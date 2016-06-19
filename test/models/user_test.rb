require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Prajjwal Dimri",
    email: "prajjwaldimri@hotmail.com",
    rollno: "141340101018",
    user_type: "Student",
    password: "anypass12", password_confirmation: "anypass12")

    @user1 = User.new(name: "Ayush Pant",
    email: "pant.ayush@hotmail.com",
    rollno: "141340101006",
    user_type: "Student",
    password: "anypass32", password_confirmation: "anypass32")
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "      "
    assert_not @user.valid?
  end

  test "name should be less than 50 characters" do
    @user.name = 'A' * 51
    assert_not @user.valid?
  end

  test "rollno should be present" do
    @user.rollno = "     "
    assert_not @user.valid?
  end

  test "rollno should be unique" do
    duplicate_user_1 = @user1.dup
    @user1.save
    assert_not duplicate_user_1.valid?
  end

  test "rollno should be less than 20 characters" do
    @user.rollno = '1' * 21
    assert_not @user.valid?
  end

  test "rollno should accept valid rollno" do
    valid_rolls = %w[141340101018 2343313421 2313343111]
    valid_rolls.each do |valid_roll|
      @user.rollno = valid_roll
      assert @user.valid?
    end
  end

  test "rollno should reject invalid rollno" do
    invalid_rolls = %w[A231 23A2321 $32141Vasda $$$@!@!-_(*)]
    invalid_rolls.each do |invalid_roll|
      @user.rollno = invalid_roll
      assert_not @user.valid?
    end
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "email should not be long than 256 characters" do
    @user.email = 'a' * 257
    assert_not @user.valid?
  end

  test "email should be unique" do
#Cannot directly use @user because they will become same objects
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email should accept valid addresses" do
    valid_addresses = %w[user@example.com A_b-C+d@foo.in
                      USER@foo.COM first.last@foo.jp]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?
    end
  end

  test "email should not accept invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org
                          user.name@example. foo@bar+bz.com
                          foo@bar_baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?
    end
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a"*5
    assert_not @user.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')    
  end
end
