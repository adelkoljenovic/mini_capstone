class Api::ProductsController < ApplicationController
  def the_products
    @products = Product.all
    render "products.json.jbuilder"
  end
end
