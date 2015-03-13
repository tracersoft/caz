module Tingui
  class Page < Post
    default_scope -> { where(publication_type: 'page') }
  end
end
