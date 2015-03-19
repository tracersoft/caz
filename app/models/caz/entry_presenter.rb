module Caz
  class EntryPresenter < Burgundy::Item
    def category_names
      item.categories.map(&:name).join(', ')
    end
  end
end
