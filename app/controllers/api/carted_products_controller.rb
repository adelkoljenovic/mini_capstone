class Api::CartedProductsController < ApplicationController
  def create
    product_id = params[:product_id].to_i
    quantity = params[:quantity].to_i

    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: product_id,
      quantity: quantity,
      status: "carted"
      )


    @carted_product.save
    render "show.json.jbuilder"

end
