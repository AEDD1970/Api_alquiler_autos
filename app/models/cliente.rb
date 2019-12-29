class Cliente < ApplicationRecord
  has_many :viajes

  validates :cedula ,presence: true
end
