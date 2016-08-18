class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_email(subject)
    @subject = subject
    mail(to: 'xingyu.ye@outlook.com', subject: @subject)
  end
end
