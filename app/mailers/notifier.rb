class Notifier < ActionMailer::Base
  default from: "madrilena@me.com"

  def notify_attendee attendee
    @attendee = attendee
    mail(
      to: @attendee.email,
      subject: 'Catherine & Alberto Baby Shower'
    )
  end

end
