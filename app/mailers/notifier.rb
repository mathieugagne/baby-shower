class Notifier < ActionMailer::Base
  default from: "avalon.powell@gmail.com"

  def notify_attendee attendee
    @attendee = attendee
    mail(
      to: @attendee.email,
      subject: 'Joanna & Vlad Baby Shower'
    )
  end

end
