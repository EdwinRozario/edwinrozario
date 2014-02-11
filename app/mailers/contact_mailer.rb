class ContactMailer < ActionMailer::Base
  default from: "edwinrozario.herokuapp.com"

  def contact_mail(from, message)
    @message = message
    mail(:to => "rozarioed@gmail.com", :subject => "edwinrozario.herokuapp")
  end

end
