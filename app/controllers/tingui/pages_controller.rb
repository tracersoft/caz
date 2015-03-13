module Tingui
  class PagesController < EntriesController
    protected

    def resource_class
      Page
    end

    def collection_path
      pages_path
    end
  end
end
