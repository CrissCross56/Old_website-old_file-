require 'mailgun'

class Mail
	def send_mail(message)
		Mailgun.configure do |config|
		  config.api_key = 'key-363c7464bd031d567bfab2e2586fa73f'
		  config.domain  = 'sandboxaaed89c6281844e7835b24cab196ef64.mailgun.org'
		end

		# or alternatively:
		@mailgun = Mailgun(:api_key => 'key-363c7464bd031d567bfab2e2586fa73f')

		parameters = {
		  :to => "grant.terdoslavich@gmail.com",
		  :subject => "New Update",
		  :text => message,
		  :from => "postmaster@sandboxaaed89c6281844e7835b24cab196ef64.mailgun.org"
		}
		@mailgun.messages.send_email(parameters)
	end

end

mail_to_me = Mail.new
mail_to_me.send_mail("A new update of NN4B is out!")
