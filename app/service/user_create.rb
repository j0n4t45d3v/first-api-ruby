require './app/repositories/user_repository'

module Users
  class UserCreate
      def initialize(params: , user_repository: UserRepository.new)
        @params = params
        @user_repository = user_repository
      end

      def call
        save_user
      end

      private
      def save_user
        @user_repository.create(@params)
      end
  end
end
