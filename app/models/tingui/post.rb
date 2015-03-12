module Tingui
  class Post < ActiveRecord::Base
    validates_presence_of :title
    belongs_to :category
  end
end
