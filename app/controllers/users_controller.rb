class UsersController < ApplicationController

    def index
        @user = User.all
    end

    def new
        @user = User.new(user_params)

        if @user.save
            redirect_to user_path(@user)
        else 
            render :new
        end
    end

    def show
        @user = User.find(user_params[:name])
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end

end
