class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
  end

  def create
  end

  def delete
  end
end
