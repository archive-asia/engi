class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login_name, null: false
      t.string :password_digest, null: false
      t.string :name
      t.string :unit_position
      t.string :mail
      t.integer :roles

      t.timestamps
    end
    add_index :users, :login_name, unique: true
  end
end
