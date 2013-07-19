class SignupService

  def register(attrs)
    User.create(attrs)
  end

end
