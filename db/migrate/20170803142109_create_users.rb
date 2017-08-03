class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :gender
      t.string :email
      t.datetime :birthday
      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :password_digest
  end
end
