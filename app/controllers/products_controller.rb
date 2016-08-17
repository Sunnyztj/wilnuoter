class ProductsController < ApplicationController
  def wine_list
    @resp = Hash.new

    products = Product.drafted

    @resp[:products] = products
  end
end