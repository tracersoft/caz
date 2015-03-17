module Caz
  class EntriesController < ApplicationController
    def index
      @entries = resource_class.all
    end

    def new
      @entry = resource_class.new
    end

    def create
      @entry = resource_class.new(entry_params)
      if @entry.save
        redirect_to collection_path, notice: I18n.t('flashes.created', model: resource_name)
      else
        render 'new'
      end
    end

    protected

    def collection_path
      root_path
    end

    def resource_class
      Entry
    end

    def resource_name
      resource_class.model_name.human
    end

    def entry_params
      params.require(resource_class.model_name.param_key).permit(:title, :content, :slug)
    end
  end
end
