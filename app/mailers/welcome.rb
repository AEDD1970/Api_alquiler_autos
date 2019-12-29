class Welcome < ApplicationMailer


  def notify(cliente)
    @clientes = "hi #{cliente.email}"
    mail(to: "alexis.duque1993@gmail.com", subject: 'hola alexis')
  end
end
