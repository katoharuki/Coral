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

    def edit
        @post = Post.find(params[:id])
    end

    def show
#        binding.pry
      @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        # モデルの更新は、クラスメソッドのupdateメソッドで行える
        post.update(post_params)

        # リダイレクト処理
        redirect_to post
    end

    def open
        @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:name, :title, :content)
    end
end
