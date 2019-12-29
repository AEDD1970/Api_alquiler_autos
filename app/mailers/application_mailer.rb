class ApplicationMailer < ActionMailer::Base
  default from: 'ing.alexis.duque@gmail.com'

  def notify(cliente)
    @clientes = cliente
    mail( to: @clientes.email, subject: 'ejemplo de email')
  end

end
