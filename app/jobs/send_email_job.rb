class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(cliente)
  	@clientes = cliente
    ApplicationMailer.sample_email(@clientes).deliver_later
  end
end
