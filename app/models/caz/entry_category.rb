module Caz
  class EntryCategory < ActiveRecord::Base
    belongs_to :category
    belongs_to :entry
  end
end
