module Tingui
  class PostsController < PublicationsController
    protected

    def resource_class
      Post
    end

    def collection_path
      posts_path
    end
  end
end
