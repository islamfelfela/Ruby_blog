class PostsController < ApplicationController
    def show

    end

    def new
        @post = Post.new
    end


    def index
        # @posts = User.find(2).posts
        @posts = Post.order(id: :desc)
    end

    def create

        # @post = Post.create(post_params)
        # @post.user_id = 2
        @post = User.find(2).posts.create(post_params)
        # @post.save

        if @post.id
            redirect_to :posts
        else
            render :new
        end
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
        redirect_to :posts
    end


    private
        def post_params
            params.require(:post).permit(:title, :content)
        end
end
