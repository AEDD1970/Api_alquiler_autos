class CreateClientes < ActiveRecord::Migration
  def up
    create_table :clientes do |t|
      t.string :cedula
      t.string :email

      t.timestamps null: false
    end
  end
  def down 
  end
end
