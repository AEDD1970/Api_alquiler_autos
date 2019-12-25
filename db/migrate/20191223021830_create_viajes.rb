class CreateViajes < ActiveRecord::Migration
  def up
    create_table :viajes do |t|
      t.string :id_auto
      t.string :cedula_id
      t.string :tiempo
      t.string :distancia
      t.string :valor

      t.timestamps null: false
    end
  end
  def dwon
  end
end
