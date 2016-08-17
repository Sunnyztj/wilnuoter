class ProductsController < ApplicationController
  def wine_list
    @resp = Hash.new

    product_count_per_page = 12
    page = params[:page] == nil ? 1 : params[:page]

    products = Product.drafted.page(page).per(product_count_per_page)

    @resp[:products] = products
    @resp[:current_page] = page
    @resp[:product_count_per_page] = product_count_per_page
  end
end