class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.order(name: :asc)
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @item = Category.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @item = Category.find(params[:id])
    end
end

