class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products

  def readable_updated_at
    updated_at.strftime("%A, %d %b %Y at %l:%M %p")
  end

  def discount_sale
    if price.to_f < 200
      "Discount item!"
    else
      "On sale!"
    end
  end

  def tax
    (price.to_f * 0.1025).round(2)
  end

  def total
    (price.to_f + tax).round(2)
  end

  def in_stock?
    if in_stock
      "In stock!"
    else
      "Out of stock!"
    end
  end
end
