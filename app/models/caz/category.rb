module Caz
  class Category < ActiveRecord::Base
    belongs_to :parent, class_name: 'Category'
    has_many :posts

    validates :name, presence: true
  end
end
