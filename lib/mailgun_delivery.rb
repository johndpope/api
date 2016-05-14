class MailgunDelivery
  attr_accessor :settings

  def initialize(values)
    self.settings = values
  end

  def deliver!(message)
    params = {
      from: message.from,
      to: message.to,
      subject: message.subject,
      html: message.body
    }
    client.send_message ENV['MAILGUN_DOMAIN'], params
  end

  private
    def client
      @_client ||= Mailgun::Client.new
    end
end
