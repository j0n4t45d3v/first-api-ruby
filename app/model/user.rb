class User
  def initialize(email: , password: )
    @email = email
    @password = password
  end

  def to_hash
    {email: @email, password: @password}
  end
end
