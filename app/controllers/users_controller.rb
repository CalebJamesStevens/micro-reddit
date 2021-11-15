class UsersController < ApplicationController

    def index
        @users = User.all
    end


    def new
        @user = User.new
    end

    def create
        if @user.save
        
        else
        
        end
    end

    def update
    end
end