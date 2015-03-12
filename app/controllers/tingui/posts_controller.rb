module Tingui
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path, notice: I18n.t('posts.flashes.created')
      else
        render 'new'
      end
    end

    private
    def post_params
      params.require(:post).permit(:title, :content)
    end
  end
end
