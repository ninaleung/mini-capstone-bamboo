class OrdersController < ApplicationController
  def create
    product_purchased = Product.find_by(id: params[:product_id])
    subtotal_calc = (product_purchased.price * params[:quantity].to_i)
    tax_calc = (subtotal_calc * 0.1025).round(2)

    new_order = Order.create(
      user_id: current_user.id,
      quantity: params[:quantity].to_i,
      product_id: params[:product_id],
      subtotal: subtotal_calc,
      tax: tax_calc,
      total: subtotal_calc + tax_calc
      )
    flash[:success] = "Success! You've purchased this product!"
    redirect_to "/orders/#{new_order.id}"
  end

  def show
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
  end
end
