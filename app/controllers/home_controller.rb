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

  def status
  end

  def talk
  end

  def mail
    if params["external"]
      ContactMailer.external_mail(params["name"], params["email"], params["message"], params["phone"]).deliver
      redirect_to root_path      
      render :json => {status: "success"}
    else
      ContactMailer.contact_mail(params["name"], params["email"], params["message"]).deliver
      redirect_to root_path      
    end
  end

end
