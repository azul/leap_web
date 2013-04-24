require 'test_helper'

class User::AdminTest < ActiveSupport::TestCase

  setup do
    @user = FactoryGirl.build(:user)
  end

  test 'normal user is no admin' do
    assert !@user.is_admin?
  end

  test 'user with login in APP_CONFIG is an admin' do
    admin_login = APP_CONFIG['admins'].first
    @user.login = admin_login
    assert @user.is_admin?
  end

end
