require 'test_helper'

class UserTest < ActiveSupport::TestCase

  include SRP::Util
  setup do
    @user = FactoryGirl.build(:user)
  end

  test "find_by_param gets User by id" do
    @user.save
    assert_equal @user, User.find_by_param(@user.id)
    @user.destroy
  end

  test "to_param gives user id" do
    assert_equal @user.id, @user.to_param
  end

  test "verifier returns number for the hex in password_verifier" do
    assert_equal @user.password_verifier.hex, @user.verifier
  end

  test "salt returns number for the hex in password_salt" do
    assert_equal @user.password_salt.hex, @user.salt
  end

  test "pgp key view" do
    @user.public_key = SecureRandom.base64(4096)
    @user.save

    view = User.pgp_key_by_handle.key(@user.login)

    assert_equal 1, view.rows.count
    assert result = view.rows.first
    assert_equal @user.login, result["key"]
    assert_equal @user.public_key, result["value"]
  end
end
