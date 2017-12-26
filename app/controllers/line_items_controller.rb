class LineItemsController < ApplicationController
  def create
    if current_cart
      current_cart.item_ids << params[:item_id]
      redirect_to cart_path(current_cart)
    end
  end
end
