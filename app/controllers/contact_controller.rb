class ContactController < ApplicationController
 skip_before_action :verify_authenticity_token
  def create
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ApplicationMailer.contact_email(name, email, body).deliver
    redirect_to home_index_path, notice: 'Message sent'
  end

end
