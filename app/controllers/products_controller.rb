class ProductsController < ApplicationController
  def home
  end

  def index
    sort_by = params[:sort_by]
    sort_order = params[:sort_order]

    if sort_by && sort_order
      @all_products = Product.order(sort_by => sort_order)
    else
      @all_products = Product.all
    end

    discount_threshold = params[:discount]
    if discount_threshold
      @all_products = Product.where("price < ?", discount_threshold)
    end

    search_term = params[:search]
    if search_term
      @all_products = Product.where("name LIKE ?", "%#{search_term}%")
    end

    category_name = params[:category]
    if category_name
      @all_products = Category.find_by(name: category_name).products
    end

  end

  def show
    product_id = params[:id]
    if product_id == "random"
      @product = Product.find_by(id: rand(1..Product.count))
    else
      @product = Product.find_by(id: product_id)
    end
  end

  def new
  end

  def create
    @new_product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    @new_image = Image.create(
      url: params[:image],
      product_id: @new_product.id
      )
    flash[:success] = "Success! You've created this product!"
    redirect_to "/products/#{@new_product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      price: params[:price],
      description: params[:description]
      )
    @new_image = Image.first.update(
      url: params[:image]
      )
    flash[:success] = "Success! You've updated this product!"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:success] = "Success! You've deleted the product!"
    redirect_to '/products'
  end

end
