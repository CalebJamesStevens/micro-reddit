class PostsController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @user = current_user
        @post = @user.posts.create(post_params)
        redirect_to @post
    
    end

    def edit
    end

    def update
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    
        redirect_to user_path(@post.user.id)
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end