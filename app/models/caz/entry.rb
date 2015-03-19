module Caz
  class Entry < ActiveRecord::Base
    validates_presence_of :title, :slug
    has_many :entry_categories, dependent: :destroy
    has_many :categories, through: :entry_categories


    extend FriendlyId
    friendly_id :title, use: :slugged

    def self.types
      %w(Caz::Post Caz::Page)
    end
  end
end
