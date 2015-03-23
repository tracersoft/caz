module Caz
  class EntriesController < ApplicationController
    helper_method :resource_name
    helper_method :edit_path
    helper_method :resource_path
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

    def update
      @entry = resource_class.friendly.find(params[:id])
      if @entry.update(entry_params)
        redirect_to collection_path, notice: I18n.t('flashes.updated', model: resource_name.human)
      else
        render 'edit'
      end
    end

    def edit
      @entry = resource_class.friendly.find(params[:id])
    end

    def destroy
      @entry = resource_class.friendly.find(params[:id])
      @entry.destroy
      redirect_to collection_path, notice: I18n.t('flashes.destroyed', model: resource_name.human)
    end

    protected
    def set_categories
      @categories = Category.all
    end

    def collection_path
      self.send("#{resource_name.route_key}_path")
    end

    def edit_path(*args)
      self.send("edit_#{resource_name.singular_route_key}_path", *args)
    end

    def resource_path(*args)
      self.send("#{resource_name.singular_route_key}_path", *args)
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
