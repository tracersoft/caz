module Tingui
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
        redirect_to collection_path, notice: I18n.t('posts.flashes.created')
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

    def entry_params
      params.require(:post).permit(:title, :content, :slug)
    end
  end
end
