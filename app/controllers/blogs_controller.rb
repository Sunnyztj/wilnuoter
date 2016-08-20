class BlogsController < ApplicationController
  def index
    @resp = Hash.new

    blog_count_per_page = 4
    page = params[:page] == nil ? 1 : params[:page]

    blogs = Blog.all.page(page).per(blog_count_per_page)

    @resp[:blogs] = blogs
    @resp[:current_page] = page
    @resp[:product_count_per_page] = blog_count_per_page
  end

  def show
    @resp = Hash.new

    blog = Blog.find(params[:id])

    @resp[:blog] = blog
  end
end