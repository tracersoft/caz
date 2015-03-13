module Tingui
  class PublicationsController < ApplicationController
    def index
      @publications = resource_class.all
    end

    def new
      @publication = resource_class.new
    end

    def create
      @publication = resource_class.new(publication_params)
      if @publication.save
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
      raise NotImplementedError
    end

    def publication_params
      params.require(:post).permit(:title, :content)
    end
  end
end
