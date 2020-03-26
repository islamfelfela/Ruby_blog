class PostsController < ApplicationController
    def show

    end

    def new
        @post = Post.new
    end


    def index
        @posts = Post.all
    end

    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to :posts
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to action: :index
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy!
        redirect_to action: :index
    end


    private
        def post_params
            params.permit(:title, :content)
        end
end
