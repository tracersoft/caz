module Caz
  class EntryPresenter < Burgundy::Item
    def category_names
      item.category_names.join(', ')
    end
  end
end
