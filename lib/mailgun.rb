require 'mailgun'
require_relative 'scrape.rb'

class Mail
	def send_mail
		today = Weather.new
		Mailgun.configure do |config|
		  config.api_key = 'key-363c7464bd031d567bfab2e2586fa73f'
		  config.domain  = 'sandboxaaed89c6281844e7835b24cab196ef64.mailgun.org'
		end

		# or alternatively:
		@mailgun = Mailgun(:api_key => 'key-363c7464bd031d567bfab2e2586fa73f')

		parameters = {
		  :to => "grant.terdoslavich@gmail.com",
		  :subject => "New Update",
		  :text => "The weather today is: #{today.temperature_today}. The temperature tonight is #{today.temperature_tonight}",
		  :from => "postmaster@sandboxaaed89c6281844e7835b24cab196ef64.mailgun.org"
		}
		@mailgun.messages.send_email(parameters)
	end

end

