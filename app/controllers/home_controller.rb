class HomeController < ApplicationController

  def cover
  end

  def likes
  end

  def works
  end

  def contact
  	@mail = false
  end

  def mail
    p "MAILING**********************"
    ContactMailer.contact_mail(params["email"], params["message"]).deliver
  	render :contact
  end

end
