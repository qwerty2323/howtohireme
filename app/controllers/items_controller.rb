class ItemsController < ApplicationController
  def index
    render json: Item.all
  end
=begin
  def add_to_cart
    @cart = Cart.find_by_id(session[:cart_id]) || Cart.new
    @cart.items << Item.find_by_id(item_params[:id])
    @cart.save
    render json: @cart
  end

  private
  def item_params
    params.permit(:id)
  end
=end
end
