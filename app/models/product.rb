class Product < ApplicationRecord
  has_many :category_products

  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
  has_many :products, through: :carted_products

  def discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
