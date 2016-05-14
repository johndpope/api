ActionMailer::Base.add_delivery_method :mailgun, MailgunDelivery

Mailgun.configure do |config|
  config.api_key = ENV['MAILGUN_API_KEY']
end
