class UserMailer < ActionMailer::Base
  default from: "marisatjoe@gmail.com"

  def followEventEmail(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: (@user.email), subject: 'Ticket for your event')
  end
end