class UsersController < ApplicationController
    def show
        @users = User.find
    end

    def index
        @users = User.all
    end

    def new
        @users = User.new
    end

    def create
        User.create(user_params)
    end

    def update
      @users = User.find(params[:id])
      @users.update(user_params)
    end

    private
    def user_params
        params.require(:user).permit(:name, :nickname)
    end
end
