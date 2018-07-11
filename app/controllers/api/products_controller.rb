class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def first_product
    @product = Product.first
    render "first_product.json.jbuilder"
  end
end
