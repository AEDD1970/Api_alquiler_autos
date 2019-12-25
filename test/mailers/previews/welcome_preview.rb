# Preview all emails at http://localhost:3000/rails/mailers/welcome
class WelcomePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome/notify
  def notify
    Welcome.notify Cliente.new(cedula: '123456789', email: 'alexis.duque1993@gmail.com')
  end

end
