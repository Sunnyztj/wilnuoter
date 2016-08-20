class ProductsController < ApplicationController
  def index
    @resp = Hash.new

    product_count_per_page = 12
    page = params[:page] == nil ? 1 : params[:page]

    products = Product.publish.page(page).per(product_count_per_page)

    @resp[:products] = products
    @resp[:current_page] = page
    @resp[:product_count_per_page] = product_count_per_page
  end

  def show
    @resp = Hash.new

    product = Product.find(params[:id])

    @resp[:product] = product
    @resp[:related_products] = Product.all.page(1).per(4)
  end
end