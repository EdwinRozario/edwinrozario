class ContactMailer < ActionMailer::Base
  default from: "edwin@edwinrozario.me"

  def external_mail(name, from, message, phone)
    @message = message
    @from = from
    @phone = phone
    mail(:to => "sr@rowlandwoodslegal.org", :subject => "rowlandwoodslegal.org [#{name}]")
  end

  def contact_mail(name, from, message)
    @message = message
    @from = from
    mail(:to => "rozarioed@gmail.com", :subject => "edwinrozario.me [#{name}]")
  end

end
