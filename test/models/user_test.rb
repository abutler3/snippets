require "test_helper"

class UserTest < ActiveSupport::TestCase

  def valid_params
    { email: "john@example.com", password: "password", name: "John Doe" }
  end

  test "is valid with valid params" do
    user = User.new valid_params

    assert user.valid?, "Can't create with valid params: #{user.errors.messages}"
  end

  test "is invalid without an email" do
    params = valid_params.clone
    params.delete :email
    user = User.new params

    refute user.valid?, "Can't be valid without email"
    assert user.errors[:email], "Missing error when without email"
  end

  test "user has a name" do
    user = User.new valid_params
    assert user.valid?
  end

  test "user has a no name present" do
    params = valid_params.clone
    params.delete :name
    user = User.new params

    assert_equal nil, user.name
  end

  # test "user name should not be too long" do
  #   params = valid_params.clone
  #   params.delete :name
  #   user = User.new params
  #
  #   user.name = "a" * 101
  #   assert_not user.valid?
  # end
  #
  # test "user name should not be too short" do
  #   params = valid_params.clone
  #   params.delete :name
  #   user = User.new params
  #
  #   user.name = "sd"
  #   assert_not user.valid?
  # end


end
