module Caz
  class EntriesController < ApplicationController
    helper_method :resource_name
    before_action :set_categories

    def index
      @entries = Burgundy::Collection.new(
        resource_class.all,
        resource_presenter
      )
    end

    def new
      @entry = resource_class.new
    end

    def create
      @entry = resource_class.new(entry_params)
      if @entry.save
        redirect_to collection_path, notice: I18n.t('flashes.created', model: resource_name.human)
      else
        render 'new'
      end
    end

    protected
    def set_categories
      @categories = Category.all
    end

    def collection_path
      root_path
    end

    def resource_class
      Entry
    end

    def resource_presenter
      EntryPresenter
    end

    def resource_name
      resource_class.model_name
    end

    def entry_params
      params.require(resource_name.param_key).permit(:title, :content, :slug, :category_ids=>[])
    end
  end
end
