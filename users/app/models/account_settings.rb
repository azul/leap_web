class AccountSettings

  def initialize(user)
    @user = user
  end

  def update(attrs)
    @user.update_attributes attrs
  end
end
