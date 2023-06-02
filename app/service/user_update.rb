require './app/repositories/user_repository'

module Users
  class UserUpdate
      def initialize(id: , body: , user_repository: UserRepository.new)
        @id = id
        @body = body
        @user_repository = user_repository
      end

      def call
        refresh_user
      end

      private
      def refresh_user
        @user_repository.update(@id, @body)
      end
  end
end
