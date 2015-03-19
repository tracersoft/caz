module Caz
  class PostsController < EntriesController
    protected

    def resource_class
      Post
    end
    
    def collection_path
      posts_path
    end
  end
end
