class OrdersController < ApplicationController
  def create
    @new_order = Order.create(
      user_id: current_user.id,
      quantity: params[:quantity]
      )
    flash[:success] = "Success! You've purchased this product!"
    redirect_to "/orders/#{@new_order.id}"
  end

  def show
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
  end
end
