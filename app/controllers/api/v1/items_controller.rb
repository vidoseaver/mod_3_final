class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(item_id)
  end

  def create
  end

  def destroy
  end

  private
    def strong_params
      params.permit(:id)
    end

    def item_id
      strong_params["id"].to_i
    end
end
