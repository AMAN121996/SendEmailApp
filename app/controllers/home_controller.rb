# app/controllers/home_controller.rb

class HomeController < ApplicationController
  def index
  end

  def send_email
    recipient_email = params[:recipient_email]
    subject = params[:subject]
    recipient_name = params[:recipient_name]

    UserMailer.send_email(recipient_email, subject, recipient_name).deliver_now
    redirect_to root_path, notice: 'Email sent successfully!'
  end
end
