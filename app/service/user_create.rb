require './app/repositories/user_repository'
require './app/model/user'

module Users
  class UserCreate
      def initialize(params: user: User, user_repository: UserRepository.new)
        @params = params
        @user = user
        @user_repository = user_repository
      end

      def call
        save_user
      end

      private
      def save_user
        user = @user.new(params[:email, params[:password]])
        @user_repository.create!(user.to_hash)
      end
  end
end
