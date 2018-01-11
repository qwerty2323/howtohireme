class CartController < ApplicationController
  def index
    get_cart
  end

  def add_to_cart
    get_cart.items << cart_params[:items]
    @cart.save!
    render json: @cart
  end

  def checkout
  end

  private
  def get_cart
    if session[:cart_id]
      @cart = Cart.find_by_id(session[:cart_id])
    else
      @cart = Cart.new
      session[:cart_id] = params[:id]
      @cart
    end
  end

  def cart_params
    params.permit(:items)
  end
end
