class ContactUsController < ApplicationController
  
  def new
    @resp = Hash.new
    @contact_us = ContactUs.new
  end

  def create
    @contact_us = ContactUs.new params[:contact_us]
    if @contact_us.save
      respond_to do |format|
        format.html { redirect_to contact_path }
        format.js
      end      
    else
      respond_to do |format|
        format.html { render action: :new }
        format.js
      end
    end
  end
end