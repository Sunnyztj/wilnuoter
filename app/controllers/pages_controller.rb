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

    @resp[:header_type] = 'white'
    @resp[:home_sliders] = home_sliders
  end

  def contact_us
    @resp = Hash.new
  end

  def about_us
    @resp = Hash.new

    staffs = Staff.load_by_position

    @resp[:staffs] = staffs
  end

  def send_contact_query
    @response = '我们已收到您的留言'
    name = params[:name]
    subject = params[:subject]
    email = params[:email]
    comment = params[:comment]

    respond_to do |format|
      ContactMailer.contact_email(params[:subject]).deliver
      format.html
      format.js
      format.json
    end
  end
end