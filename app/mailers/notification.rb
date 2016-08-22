class Notification < ActionMailer::Base
  default from: "Wilnuoter Wine Notification <webztj@gmail.com>"

  def notify_us(contact)
    @contact = contact
    mail(
      to: Rails.env.production? ? 'webztj@gmail.com' : 'webztj@gmail.com',
      reply_to: "#{contact.email}",
      subject: "[WilnuoterWine -#{contact.subject}] #{contact.name}"
    )
  end
end
