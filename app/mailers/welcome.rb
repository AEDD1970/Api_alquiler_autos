class Welcome < ApplicationMailer


  def notify(cliente)
    @clientes = cliente
    mail to: @clientes.email, subject: '!bienvenido a la aplicacion alquiler de autos'
  end
end
