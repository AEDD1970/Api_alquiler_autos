rails class CreatePropietarios < ActiveRecord::Migration
  def up
    create_table :propietarios do |t|
      t.string :id_auto
      t.string :cedula
      t.string :tarjeta
      t.string :licencia
      t.string :email
      t.string :telefono
      t.string :direccion

      t.timestamps null: false
    end
  end
  def down
    drop_table :propietarios
  end
end
