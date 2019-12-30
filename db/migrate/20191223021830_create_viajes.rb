class CreateViajes < ActiveRecord::Migration[5.0]
  def up
    create_table :viajes do |t|
      t.string :id_auto
      t.string :cliente_id
      t.string :tiempo
      t.string :distancia
      t.string :valor

      t.timestamps null: false
    end
  end
  def down
    drop_table :viajes
  end
end
