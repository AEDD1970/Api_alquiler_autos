class Viaje < ApplicationRecord
  belongs_to :cliente

  validates :cedula_id, presence: true

end
