class CreateClientes < ActiveRecord::Migration[5.0]
  def up
    create_table :clientes do |t|
      t.string :cedula
      t.string :email
      t.string :telefono

      t.timestamps null: false
    end
  end
  def down

    drop_table :clientes
  end
end
