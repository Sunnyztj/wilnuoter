class ProductsController < ApplicationController
  def index
    @resp = Hash.new

    product_count_per_page = 12
    page = params[:page] == nil ? 1 : params[:page]

    products = Product.drafted.page(page).per(product_count_per_page)

    @resp[:products] = products
    @resp[:current_page] = page
    @resp[:product_count_per_page] = product_count_per_page
  end

  def show
    @resp = Hash.new

    product = Product.load_by_url_name(params[:id]).first

    @resp[:product] = product
    @resp[:related_products] = Product.all.page(1).per(4)
  end
end