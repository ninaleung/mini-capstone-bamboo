class CartedProductsController < ApplicationController
  def create
    new_carted_product = CartedProduct.create(
      user_id: current_user.id,
      quantity: params[:quantity].to_i,
      product_id: params[:product_id],
      status: "carted"
      )
    flash[:success] = "Success! You've added this product to your cart!"
    # redirect_to "/carted_products/#{new_order.id}"
    redirect_to "/carted_products"
  end

  def index
    @carted_products = 
  end
end
