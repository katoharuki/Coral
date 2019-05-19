class PostsController < ApplicationController
    before_action :set_target_post, only: %i[show edit update destroy]


    def index
        @posts = Post.page(params[:page])
    end


    def new
        @post = Post.new
    end


    def create
        post = Post.create(post_params)


        # フラッシュ
        flash[:notice] = "「#{post.title}」の記事が投稿されました!"


        redirect_to post
    end


    def show
    end


    def edit
    end


    def update
        @post.update(post_params)


        # フラッシュ
        flash[:notice] = "「#{@post.title}」の記事を更新しました!"


        redirect_to @post
    end


    def destroy
        @post.delete


        # フラッシュ 
        flash[:notice] = "「#{@post.title}」の記事を削除しました!"


        redirect_to posts_path
    end


    private


    def post_params
        params.require(:post).permit(:name, :title, :content)
    end


    def set_target_post
        @post = Post.find(params[:id])
    end
end

