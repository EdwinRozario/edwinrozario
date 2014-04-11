class HomeController < ApplicationController

  skip_before_filter :verify_authenticity_token  

  def new
  end

  def about
  end

  def work
  end

  def contact
  end

  def mail
    ContactMailer.contact_mail(params["name"], params["email"], params["message"]).deliver
  	redirect_to root_path
  end

end
