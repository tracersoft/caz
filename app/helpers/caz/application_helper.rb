module Caz
  module ApplicationHelper
    def new_link_for(model)
      link_to t('buttons.new', model: model.model_name.human),
        self.send("new_#{model.model_name.singular_route_key}_path")
    end

    def all_link_for(model)
      link_to t('buttons.all', model: model.model_name.human.pluralize),
        self.send("#{model.model_name.route_key}_path")
    end
  end
end
