require 'test_helper'

class User::ValidationTest < ActiveSupport::TestCase

  setup do
    @user = FactoryGirl.build(:user)
  end

  test "test set of attributes should be valid" do
    @user.valid?
    assert_equal Hash.new, @user.errors.messages
  end

  test "test require hex for password_verifier" do
    @user.password_verifier = "QWER"
    assert !@user.valid?
  end

  test "test require alphanumerical for login" do
    @user.login = "qw#r"
    assert !@user.valid?
  end

  test "login needs to be unique" do
    other_user = FactoryGirl.create :user, login: @user.login
    assert !@user.valid?
    other_user.destroy
  end

  test "login needs to be different from other peoples email aliases" do
    other_user = FactoryGirl.create :user
    other_user.email_aliases.build :email => @user.login
    other_user.save
    assert !@user.valid?
    other_user.destroy
  end

end
