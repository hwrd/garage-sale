class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  # GET /items/1
  # GET /items/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find_by(identifier: params[:id])
    end
end
