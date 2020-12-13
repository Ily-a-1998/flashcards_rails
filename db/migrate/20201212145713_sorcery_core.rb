class SorceryCore < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :email, :string, null: false
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
    add_index :users, :email, unique: true
  end
end
