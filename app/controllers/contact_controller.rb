class ContactController < ApplicationController
 skip_before_action :verify_authenticity_token

  def create
    name = params[:name]
    lastname = params[:surname]
    email = params[:email]
    phone = params[:phone]
    message = params[:message]
    ContactMailer.send_feedback_email(name, email, message).deliver_now
    redirect_to home_index_path, notice: 'Thank you for your feedback! We will respond shortly.'
  end

end
