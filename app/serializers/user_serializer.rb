class UserSerializer < ActiveModel::Serializer
  attributes :id, :emailadmin, :username, :password_digest
end