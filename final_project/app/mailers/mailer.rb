class Mailer < ApplicationMailer
	default from: "invite@questioApp.com"

	def invite_email(invitee, q)
    @subject = q.subject
    @invitee = invitee
    @url  = 'http://localhost:3000/questionnaires/' + q.id.to_s + '/accept?accept_token=' + q.accept_token
    mail(to: invitee, subject: 'Welcome to My Awesome Site')
  end
end
