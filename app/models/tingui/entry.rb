module Tingui
  class Entry < ActiveRecord::Base
    validates_presence_of :title, :slug
    validates_uniqueness_of :slug

    extend FriendlyId
    friendly_id :title, use: :slugged

    belongs_to :category

    def self.types
      %w(Tingui::Post Tingui::Page)
    end
  end
end
