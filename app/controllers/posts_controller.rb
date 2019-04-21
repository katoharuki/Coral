# Applicationcontrollerクラスを継承することで、クラスがコントローラと認識される
class PostsController < ApplicationController
    def Coral
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

   def create
        Post.create(post_params)
    end

    def open
#        binding.pry
      @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:name, :title, :content)
    end
end
