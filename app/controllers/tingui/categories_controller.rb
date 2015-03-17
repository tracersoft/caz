require_dependency "tingui/application_controller"

module Tingui
  class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.all
    end

    def show
    end

    def new
      @category = Category.new
      @category_options = Category.pluck(:name, :id)
    end

    def edit
      @category_options = Category.pluck(:name, :id)
    end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to @category, notice: I18n.t('flashes.created', model: resource_name)
      else
        render :new
      end
    end

    def update
      if @category.update(category_params)
        redirect_to @category, notice: I18n.t('flashes.updated', model: resource_name)
      else
        render :edit
      end
    end

    def destroy
      @category.destroy
      redirect_to categories_url, notice: I18n.t('flashes.destroyed', model: resource_name)
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :parent_id)
    end

    def resource_name
      Category.model_name.human
    end
  end
end
