class Cliente < ApplicationRecord
  has_many :viajes

  validates :cedula ,presence: true
  validates :cedula ,uniqueness: { message: " la cedula ya existe" }, on: :create
end
