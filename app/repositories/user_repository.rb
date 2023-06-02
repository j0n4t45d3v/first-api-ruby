class UserRepository
  def find_by_id(id)
    User.find(id)
  end

  def find_all
    User.all
  end

  def create(params)
    User.create(params)
  end

  def update(id, params)
    user = User.find(id)
    user.update(params)
  end

  def delete(id)
    User.find(id).delete
  end
end
