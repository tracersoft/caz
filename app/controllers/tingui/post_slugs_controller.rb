module Tingui
  class PostSlugsController < ApplicationController
    def create
      @post = Post.new(title: params[:title])

      unless params[:title].empty?
        @post.send(:set_slug)
        render json: { slug: @post.slug }
      else
        render json: { slug: '' }
      end
    end
  end
end
