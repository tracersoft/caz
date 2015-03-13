module Tingui
  class PostsController < PublicationsController
    protected

    def resource_class
      Post
    end

    private

    def collection_path
      posts_path
    end

    def post_params
      params.require(:post).permit(:title, :content, :slug)
    end
  end
end
