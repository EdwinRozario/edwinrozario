class ContactMailer < ActionMailer::Base
  default from: "savessw@gmail.com"

  def contact_mail(from, message)
    p "********************************************"
  	p ActionMailer::Base.smtp_settings[:user_name]
  	p ActionMailer::Base.smtp_settings[:password]

    @message = message
    mail(:to => "rozarioed@gmail.com", :subject => "edwinrozario.herokuapp")
  end

end
