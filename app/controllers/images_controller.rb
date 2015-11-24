class ImagesController < ApplicationController
  def new
  end

  def create
    @new_image = Image.create(
      url: params[:url],
      product_id: params[:product_id],
      )
    flash[:success] = "Success! You've added an image to this product!"
    redirect_to "/products/#{@new_image.product.id}"
  end
end
