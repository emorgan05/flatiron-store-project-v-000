class CartsController < ApplicationController
  def show
  end

  def checkout
    @current_cart = Cart.find(params[:id])
    render 'show'
  end
end
