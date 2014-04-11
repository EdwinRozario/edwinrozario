class ContactMailer < ActionMailer::Base
  default from: "edwin@edwinrozario.me"

  def contact_mail(name, from, message)
    @message = message
    @from = from
    mail(:to => "rozarioed@gmail.com", :subject => "edwinrozario.me [#{name}]")
  end

end
