class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :administradors do |t|
      t.string :username,         null: false
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password, null: false
      t.string :salt,             null: false

      t.timestamps                null: false
    end
  end
end
