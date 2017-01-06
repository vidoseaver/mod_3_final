class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(item_id)
  end

  def create
    Item
  end

  def destroy
    item = Item.find(item_id)
    if item.destroy
      render json: "success"
    else
      render 404
    end
  end

  private
    def strong_params
      params.permit(:id)
    end

    def item_id
      strong_params["id"].to_i
    end

    def permitted_id
      params.require(:delete).permit(:id)
    end

    def item_attributes
      params.require(:post).permit(:name,:description,:image_url)
    end
end
