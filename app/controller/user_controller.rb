require './app/service/user_find'
require './app/service/user_create'
require './app/service/user_update'

class UserController
  def self.find_all
    Users::UserFind.new.call
  end

  def self.save(params)
    Users::UserCreate.new(params: params).call
  end

  def self.refresh(id, body)
    Users::UserUpdate.new(id: id,body: body).call
  end
end
