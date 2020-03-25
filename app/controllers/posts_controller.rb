class PostsController < ApplicationController
    def new
    end

    def index
    end

    def create
        # @post = Post.new(params[:post])
 
        # @post.save
        # redirect_to @post
    end

    # private
    #     def post_params
    #         params.require(:post).permit(:title, :content)
    #     end
end
