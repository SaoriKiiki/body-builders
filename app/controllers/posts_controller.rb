class PostsController < ApplicationController

      attr_accessor :file

        def index
            @posts = User.find(params[:user_id]).posts
        end

        def new
          @post = Post.new
          @user = User.find(params[:user_id])
        end

        def create
            @post = Post.new(post_params)
            @post.user_id = params[:user_id]
            @post.save

            redirect_to "/users/#{params[:user_id]}/posts/#{@post.id}"
        end

        def show
          @post = Post.find(params[:id])
        end

        private
        def post_params
            params.require(:post).permit(:caption, :url, :file, :cover)
        end

end
