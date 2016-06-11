class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.string :address
      t.string :nickname
      t.string :cpf

      t.timestamps null: false
    end
  end
end
