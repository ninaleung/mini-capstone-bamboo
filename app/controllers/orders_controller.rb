class OrdersController < ApplicationController
  # def create
  #   product_purchased = Product.find_by(id: params[:product_id])
  #   subtotal_calc = (product_purchased.price * params[:quantity].to_i)
  #   tax_calc = (subtotal_calc * 0.1025).round(2)

  #   new_order = Order.create(
  #     user_id: current_user.id,
  #     quantity: params[:quantity].to_i,
  #     product_id: params[:product_id],
  #     subtotal: subtotal_calc,
  #     tax: tax_calc,
  #     total: subtotal_calc + tax_calc
  #     )
  #   flash[:success] = "Success! You've purchased this product!"
  #   redirect_to "/orders/#{new_order.id}"
  # end

  # def show
  #   order_id = params[:id]
  #   @order = Order.find_by(id: order_id)
  #   @product_purchased = Product.find_by(id: @order.product_id)
    
  # end

  def create
    cart_items = current_user.carted_products.where("status LIKE ?", "carted")

    subtotal_calc = 0
    cart_items.each do |item|
      subtotal_calc += (item.product.price * item.quantity)
    end

    tax_calc = (subtotal_calc * 0.1025).round(2)

    @new_order = Order.create(
      user_id: current_user.id,
      subtotal: subtotal_calc,
      tax: tax_calc,
      total: subtotal_calc + tax_calc,
      )

    cart_items.each do |item|
      item.update(
        status: "purchased", 
        order_id: @new_order.id
        )
      flash[:success] = "Success! You've successfully placed an order!"
      redirect_to "/orders/#{@new_order.id}"
    end
  end

  def show
    order_id = params[:id]
    # @order = Order.find_by(id: order_id)
    # @products_purchased = carted_products.products
    # Product.find_by(id: @order.product_id)
    @purchased_items = CartedProduct.where(order_id: order_id)
  end

end
