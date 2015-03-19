module Caz
  class PostsController < EntriesController
    protected

    def resource_class
      Post
    end
  end
end
