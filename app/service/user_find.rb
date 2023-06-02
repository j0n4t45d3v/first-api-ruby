require './app/repositories/user_repository'

module Users
  class UserFind
      def initialize(user_repository: UserRepository.new)
        @user_repository = user_repository
      end

      def call
        find_users
      end

      private
      def find_users
        @user_repository.find_all
      end
  end
end
