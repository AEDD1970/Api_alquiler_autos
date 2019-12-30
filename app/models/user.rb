class User < ApplicationRecord
  #autentificara con contraseña
  has_secure_password

  #validate basic for password

  validates_length_of :passsword, maximum: 50, minimum: 6, allow_nil: false, allow_blank: false

  validates_presence_of :emailadmin
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_uniqueness_of :emailadmin



end
