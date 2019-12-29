class ApplicationMailer < ActionMailer::Base
  default from: 'ing.alexis.duque@gmail.com'
  layout 'mailer'

  def sample_email(cliente)
    @clientes = cliente
    mail(to: @clientes.email, subject: 'Sample Email')
  end

end
