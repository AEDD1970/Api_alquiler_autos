class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :username, null:false, unique:true
      t.string :emailadmin, null:false , index: true, unique:true
      t.string :password_digest, null: false

      t.timestamps
    end

  end
  def down
    drop_table :users
  end
end
