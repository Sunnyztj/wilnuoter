class PagesController < ApplicationController

  def show
    @page = Page.find params[:id]
    if @page.nil?
      redirect_to root_path
      return
    end
    render params[:id].underscore if lookup_context.template_exists?(params[:id].underscore, "pages", false)
  end

  def index
    @resp = Hash.new

    home_sliders = HomeSlider.active

    @resp[:home_sliders] = home_sliders
  end

end