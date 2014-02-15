class ContactMailer < ActionMailer::Base
  default from: "savessw@gmail.com"

  def contact_mail(from, message)
    @message = message
    @from = from
    mail(:to => "rozarioed@gmail.com", :subject => "edwinrozario.herokuapp")
  end

end
